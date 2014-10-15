Rails.application.routes.draw do
  root 'pages#home'

  get '/', to: 'pages#home', as: 'home'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  resources :sessions, only: [:new, :create, :destroy]

  namespace :api do
    get '/podcast', to: 'podcast#show'
    put '/podcast', to: 'podcast#update'
  end
end
