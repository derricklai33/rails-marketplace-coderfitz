Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"
  resources :sneakers, only: [:index]
  resources :apparels, only: [:index]
  resources :listings
  get "/account", to: 'account#index', as: 'account' 
  get "users/:id", to: "users#show", as: 'user'
  get "payments/success", to: "payments#success"
  get "payments/cancel", to: "payments#cancel"
  post 'payments/webhook', to:'payments#webhook'
end
