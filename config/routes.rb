Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :loans, only: [:index]

  resources :offers, only: [:index, :new, :create] do
    resources :loans, only: [:new, :create]
  end
end
