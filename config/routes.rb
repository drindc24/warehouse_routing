Rails.application.routes.draw do
  root 'products#index'
  resources :products
  resources :destinations
  resources :categories
  resources :references
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
