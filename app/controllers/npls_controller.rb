class NplsController < ApplicationController
  def index
    @npls = Npl.all
  end

  def show
    @npl = Npl.find(params[:id])
  end
end
