Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/users/:id', to: 'pages#cockpit', as: 'user_cockpit'
  resources :npls do
    resources :bids, only: [:index, :new, :create]
  end
  resources :bids, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
