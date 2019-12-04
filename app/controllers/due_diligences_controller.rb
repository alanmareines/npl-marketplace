class DueDiligencesController < ApplicationController
  before_action :find_dd, only: %i[edit show update finish]
  before_action :find_npl, only: %i[edit new create update show finish]
  before_action :lawyer?, only: %i[index edit]
  before_action :npl_user?, only: %i[new create show]

  def index
    # Só advogados podem ver essa página
    @dd = DueDiligence.all
  end

  def new
    # Só o cedente pode ver essa página e incluir os campos de documentos
    @dd = DueDiligence.new
  end

  def create
    @dd = DueDiligence.new(dd_params)
    @dd.npl = @npl
    if @dd.save
      @npl.due_diligence = true
      @npl.save
      redirect_to npl_due_diligence_path(@npl, @dd)
    else
      render :new
    end
  end

  def show
    # Só o cedente pode ver essa página - precisamos deixar ele alterar os documentos também
    @messages = @dd.messages.all.order(created_at: :asc)
    @message = Message.new
  end

  def edit
    # Só advogados podem ver essa página
    @messages = @dd.messages.all.order(created_at: :asc)
    @message = Message.new
  end

  def update
    if current_user == @npl.user
      @dd.update(dd_params)
      redirect_to npl_due_diligence_path(@npl, @dd)
    elsif
      @dd.user = current_user
      @dd.update!(dd_full_params)
      if @dd.finished        
        redirect_to npl_due_diligence_finish_path(@npl, @dd)
      else
        redirect_to edit_npl_due_diligence_path(@npl, @dd), notice: "Progress Saved!"
      end
    else
      render :edit
    end
  end

  def finish
    unless current_user.lawyer? || current_user == @npl.user
      redirect_to page_error_path
    end
    @bid_winner = Bid.where(npl: @npl, winner: true).first
    @bids = @npl.bids
    @messages = @dd.messages
    @lawyer = @dd.user
    respond_to do |format|
      format.html
      format.pdf do
        render  pdf: "Yield_platform_#{@npl.name.split(' ').join('_')}",
                layout: "pdf.html",
                template: "due_diligences/finish.pdf.erb",
                footer: {
                  center: "Yield Platform - All Rights Reserved"
                }
      end
    end
  end

  private

  def find_npl
    @npl = Npl.find(params[:npl_id])
  end

  def find_dd
    @dd = DueDiligence.find(params[:id])
  end

  def dd_params
    params.require(:due_diligence).permit(:contract_document, :collateral_document, :other_document, :npl) if params[:due_diligence]
  end

  def dd_full_params
    params.require(:due_diligence).permit(:book_value_valid, :npl_type_valid, :debtor_valid,
                                          :maturity_date_valid, :collateral_description_valid,
                                          :guarantor_valid, :npl, :finished, :legal_opinion)
  end

  def lawyer?
    unless current_user.lawyer?
      redirect_to page_error_path
    end
  end

  def npl_user?
    unless current_user == @npl.user
      redirect_to page_error_path
    end
  end
end
