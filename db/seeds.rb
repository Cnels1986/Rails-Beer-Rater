# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Brewery.create(name: 'Tired Hands')
Brewery.create(name: 'Troegs')
Brewery.create(name: 'Victory')

Location.create(name: 'Beer Mongers')
Location.create(name: 'The Fridge')
Location.create(name: 'First Post')
#
# Beer.create(user_id: 1, name: 'Hop Hands', breweries_id: 1, locations_id: 1, beer_type: 'Pale Ale', rating: 5)
# Beer.create(user_id: 2, name: 'Soft Sphere', breweries_id: 1, locations_id: 1, beer_type: 'IPA', rating: 5)
# Beer.create(user_id: 1, name: 'Golden Monkey', breweries_id: 3, locations_id: 3, beer_type: 'Belgian Tripel', rating: 5)
