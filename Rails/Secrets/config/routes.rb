Rails.application.routes.draw do
  root 'sessions#new'

  resources :users
  resources :sessions
  resources :secrets
  resources :likes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
