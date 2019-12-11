Rails.application.routes.draw do
  devise_for :users
  get '/home', to: 'static_pages#home', as: 'home'
  get '/about', to: 'static_pages#about', as: 'about'

  resources :meetings
  resources :attends, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]

  root 'meetings#index'
end
