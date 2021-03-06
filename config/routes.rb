Rails.application.routes.draw do
  devise_for :users

  resources :homes, only: [:index]
  resources :books, only: [:index, :create, :show, :edit, :destroy, :update]
  resources :users, only: [:index, :create, :show, :edit, :destroy, :update]
  resources :abouts, only: [:index]
  root 'tops#index'

  get '/home/about' => 'abouts#index', as: "about"
#      メソッドの代入                        ↑action名の変更

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
