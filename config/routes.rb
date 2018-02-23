Rails.application.routes.draw do
  root 'beer_rater#home'
  get '/beers',      to: 'beer_rater#beers'
  get '/breweries',  to: 'beer_rater#breweries'
  get '/locations',  to: 'beer_rater#locations'
  get '/signup',     to: 'users#new'
  get '/addbeer',    to: 'beers#new'
  get '/editbeer',   to: 'beers#edit'
  get '/removebeer', to: 'beers#remove'
end
