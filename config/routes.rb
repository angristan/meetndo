Rails.application.routes.draw do
  get '/home', to: 'static_pages#home', as: 'home'
  get '/about', to: 'static_pages#about', as: 'about'

  root 'static_pages#home'
end
