Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"
  get "/account", to: 'account#index', as: 'account' 
  resources :sneakers, only: [:index]
  resources :apparels, only: [:index]
  resources :listings
  get '/success/:id', to: 'listings#bought', as: 'bought'
end
