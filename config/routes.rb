Rails.application.routes.draw do
  root 'landing#index'

  get '/register', to: 'users#new', as: 'register'
  post '/register', to: 'users#create'
  get '/dashboard', to: 'users#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/discover', to: 'books#discover'
  get '/discover/:category', to: 'books#index'
  get '/books/:isbn', to: 'books#show'
end
