Rails.application.routes.draw do
  
  resources :orders, only: [:index, :create, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :items, only: [:index]
  resources :login, only: [:create]
  resources :jointables, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
