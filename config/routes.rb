Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"
  resources :sneakers, only: [:index]
  resources :apparels, only: [:index]
  resources :listings
  get "/account", to: 'account#index', as: 'account' 
  get '/success/:id', to: 'listings#bought', as: 'bought'
  get "payments/success", to: "payments#success"
end
