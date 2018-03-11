User.create!(name:  "Chris Nelson",
             email: "Cnels1986@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

Brewery.create(name: 'Tired Hands')
Brewery.create(name: 'Troegs')
Brewery.create(name: 'Victory')
Brewery.create(name: 'Miller')
Brewery.create(name: 'Yuengling')

Beer.create(name: 'Hop Hands', brewery_id: 1, beer_type: 'IPA')
Beer.create(name: 'Golden Monkey', brewery_id: 3, beer_type: 'Belgian Tripel')
Beer.create(name: 'Alien Church', brewery_id: 1, beer_type: 'Double IPA')
Beer.create(name: 'Miller Lite', brewery_id: 4, beer_type: 'Pilsner')
Beer.create(name: 'Nugget Nectar', brewery_id: 2, beer_type: 'Amber Ale')
