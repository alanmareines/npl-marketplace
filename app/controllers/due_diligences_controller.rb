class DueDiligencesController < ApplicationController
  before_action :find_dd, only: %i[edit show update]

  def index
    @dd = DueDiligence.all
  end

  def new
    @dd = DueDiligence.new
  end

  def create
    @dd = DueDiligence.new(dd_params)
    if @dd.save
      redirect_to npl_due_diligence_path(@dd)
    else
      render :new
    end
  end

  def show
    @npl = @dd.npl
  end

  def edit
  end

  def update
    if @dd.update
      redirect_to npl_due_diligence_path(@dd)
    else
      render :edit
    end
  end

  private

  def find_dd
    @dd = DueDiligence.find(params[:id])
  end

  def dd_params
    params.require(:due_diligence).permit(:contract_document, :collateral_document, :other_document, :npl)
  end
end
