User.create!(name:  "Chris Nelson",
             email: "Cnels1986@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

19.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
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
