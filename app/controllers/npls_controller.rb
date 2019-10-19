class NplsController < ApplicationController
  def index
    @npls = Npl.all
  end
end
