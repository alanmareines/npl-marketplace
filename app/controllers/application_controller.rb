class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :user_params, if: :devise_controller?

  def user_params
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name cpf_cnpj phone])
  end
end
