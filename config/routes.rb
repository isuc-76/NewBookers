Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'
  resources :homes, only: [:index, :create, :show, :edit, :destroy]
  resources :books, only: [:index, :create, :show, :edit, :destroy]
  resources :users, only: [:index, :create, :show, :edit, :destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
