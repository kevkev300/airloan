Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show]

  resources :loans, only: [:index] do
    member do
        get "/AcceptedByLender", to: "loans#accepted", as: :accepted_by_lender
        get "/DeclinedByLender", to: "loans#declined", as: :declined_by_lender
    end
  end

  resources :offers, only: [:index, :new, :create, :show] do
    resources :loans, only: [:create]
  end
end
