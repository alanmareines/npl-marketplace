Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/cockpit', to: 'pages#cockpit', as: 'user_cockpit'
  resources :npls do
    resources :bids, only: [:index, :new, :create]
    post "run_auction", to: "npls#run_auction"
    resources :due_diligences, except: [:destroy]
  end
  resources :bids, only: [:show]

  ##############
  # Sidekiq Web UI, only for admins...
  ##############
  require "sidekiq/web"
    authenticate :user, lambda { |u| u.admin } do
      mount Sidekiq::Web => '/sidekiq'
  end
  ##############
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
