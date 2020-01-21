Rails.application.routes.draw do
  resources :jointables
  resources :orders
  resources :users
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
