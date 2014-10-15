Rails.application.routes.draw do
  root 'sessions#new'

  get '/home', to: 'pages#home', as: 'home'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  resources :sessions, only: [:new, :create, :destroy]
end
