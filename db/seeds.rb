User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end


Brewery.create(name: 'Tired Hands')
Brewery.create(name: 'Troegs')
Brewery.create(name: 'Victory')

Location.create(name: 'Beer Mongers')
Location.create(name: 'The Fridge')
Location.create(name: 'First Post')

Beer.create(user_id: 1, name: 'Hop Hands', brewery_id: 1, location_id: 1, beer_type: 'Pale Ale', rating: 5)
Beer.create(user_id: 1, name: 'Soft Sphere', brewery_id: 1, location_id: 1, beer_type: 'IPA', rating: 5)
Beer.create(user_id: 1, name: 'Golden Monkey', brewery_id: 3, location_id: 3, beer_type: 'Belgian Tripel', rating: 5)
