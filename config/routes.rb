Rails.application.routes.draw do
  get 'password_reset/new'
  get 'password_reset/edit'

  root 'beer_rater#home'

  get '/beers',       to: 'beer_rater#beers'
  get '/breweries',   to: 'beer_rater#breweries'
  get '/locations',   to: 'beer_rater#locations'

  get '/signup',      to: 'users#new'

  get '/checkin',     to: 'checkin#new'
  post '/checkin',    to: 'checkin#create'
  get '/viewcheckin', to: 'checkin#index'

  get '/addbeer',     to: 'beers#new'
  # get '/showbeers',   to: 'beers#show'
  # get '/check',       to: 'beers#check'
  # post '/check',      to: 'beers#check'
  post '/beers',      to: 'beers#create'
  get '/beer/:id',    to: 'beers#show', as: 'beer_url'

  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'

  resources :users
  resources :breweries
  resources :locations
  resources :beers

  resources :account_activations, only: [:edit]

  # resources :password_resets,     only: [:new, :create, :edit, :update]
end
