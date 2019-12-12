Rails.application.routes.draw do
  devise_for :users
  get '/home', to: 'static_pages#home', as: 'home'
  get '/about', to: 'static_pages#about', as: 'about'

  get '/users/:id', to: 'users#index', as: 'profile'

  get '/my-meetings', to: 'meetings#my_meetings', as: 'my_meetings'

  resources :meetings
  resources :attends, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end

  root 'meetings#index'
end
