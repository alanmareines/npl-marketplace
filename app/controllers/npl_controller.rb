class NplController < ApplicationController
  def index
    @npls = Npl.all
  end
end
