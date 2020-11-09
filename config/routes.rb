Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"
  get "/account", to: 'account#index', as: 'account' 
  resources :sneakers
  resources :apparels
end
