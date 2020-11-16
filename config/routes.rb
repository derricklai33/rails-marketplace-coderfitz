Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"
  resources :sneakers, only: [:index]
  resources :apparels, only: [:index]
  resources :listings
  get "/account", to: 'account#index', as: 'account' 
  get "payments/success", to: "payments#success"
  get "users/:id", to: "users#show", as: 'user'
end
