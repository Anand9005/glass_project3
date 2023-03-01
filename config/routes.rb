Rails.application.routes.draw do
  resources :line_items
  resources :carts

  get 'gallery/index'
  get "gallery/checkout"
  post "gallery/checkout"
  get "gallery/search"
  post "gallery/search"
  get "gallery/purchase_complete"

  

  resources :stores
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
