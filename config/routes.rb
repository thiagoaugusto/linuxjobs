Rails.application.routes.draw do  
  root 'home#index'
  resources :jobs
  resources :users
  resources :sessions, only: [:new, :create, :destroy]  
end
