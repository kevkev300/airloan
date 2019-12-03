Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :loans, only: [:index]

  resources :offers, only: [:index, :new, :create, :show] do
    resources :loans, only: [:new, :create]
  end
end
