Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  resources :books, only: [:index, :create, :show, :edit, :destroy]
  resources :users, only: [:index, :create, :show, :edit, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
