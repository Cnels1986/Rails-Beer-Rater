Rails.application.routes.draw do
  get 'password_reset/new'

  get 'password_reset/edit'

  root 'beer_rater#home'
  get '/beers',      to: 'beer_rater#beers'
  get '/breweries',  to: 'beer_rater#breweries'
  get '/locations',  to: 'beer_rater#locations'
  get '/signup',     to: 'users#new'
  get '/addbeer',    to: 'beers#new'
  get '/editbeer',   to: 'beers#edit'
  get '/removebeer', to: 'beers#remove'
  post '/beers',      to: 'beers#create'
  get '/beer/:id', to: 'beers#show', as: 'beer_url'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users

  resources :account_activations, only: [:edit]

  # resources :password_resets,     only: [:new, :create, :edit, :update]
end
