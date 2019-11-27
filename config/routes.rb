Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/cockpit', to: 'pages#cockpit', as: 'user_cockpit'
  get '/error', to: 'pages#errorpage', as: 'page_error'
  resources :due_diligences, only: [:index]
  resources :npls do
    resources :bids, only: %i[index new create]
    post "run_auction", to: "npls#run_auction"
    resources :due_diligences, except: %i[index destroy] do
      resources :messages, only: %i[create]
    end
    get '/due_diligences/:id/finish', to: 'due_diligences#finish', as: 'due_diligence_finish'
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
