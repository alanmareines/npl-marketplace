class DueDiligencesController < ApplicationController
  before_action :find_dd, only: %i[edit show update]
  before_action :find_npl, only: %i[edit new]

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
      redirect_to npl_due_diligence_path(@dd)
    else
      render :new
    end
  end

  def show
    # Só o cedente pode ver essa página - precisamos deixar ele alterar os documentos também
    @npl = @dd.npl
  end

  def edit
    # Só advogados podem ver essa página
  end

  def update
    raise
    if @dd.update(dd_full_params)
      redirect_to npl_due_diligence_path(@dd)
    else
      render :edit
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
    params.require(:due_diligence).permit(:contract_document, :collateral_document, :other_document, :npl)
  end

  def dd_full_params
    params.require(:due_diligence).permit(:book_value_valid, :npl_type_valid, :debtor_valid, :maturity_date_valid, :collateral_description_valid, :guarantor_valid, :npl)
  end
end
