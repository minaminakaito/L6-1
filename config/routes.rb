Rails.application.routes.draw do
  resources :products
  get 'top/main'
  resources :cartitems, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  #root 'top#main'
  root 'products#index'
  #root 'cartitems#new'
  #root 'carts#show'
end

