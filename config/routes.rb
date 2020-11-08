Rails.application.routes.draw do
  root "welcome#index"
  resources :sneakers
  resources :apparels
end
