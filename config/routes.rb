Rails.application.routes.draw do
  root 'beer_rater#home'
  # get 'beer_rater/home'
  get '/beers',      to: 'beer_rater#beers'
  get '/breweries',  to: 'beer_rater#breweries'
  get '/locations',  to: 'beer_rater#locations'
end
