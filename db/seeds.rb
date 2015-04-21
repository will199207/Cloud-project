# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Products----------------------------------------

Product.delete_all

Product.create!(
    :name => "20 oz Bottles of Coke Cola", 
    :description => "Cheap Caffinee",
    :price => 1.50,
    :target => 100,
    :pledges => 50,
    :start => "2015-01-22 12:00:00",
    :ending => "2015-07-02 12:00:00",
    :user_id => 1)

Product.create!(
    :name => "Laptop",
    :description => "Probably need one",
    :price => 550.00,
    :target => 20,
    :pledges => 6,
    :start => "2014-01-01 12:00:00",
    :ending => "2015-07-03 12:00:00",
    :user_id => 2)
        
Product.create!(
    :name => "Children's Toy",
    :description => "Keep the kids quiet",
    :price => 15.99,
    :target => 200,
    :pledges => 150,
    :start => "2015-02-20 12:00:00",
    :ending => "2015-07-30 12:00:00",
    :user_id => 3)

Product.create!(
    :name => "NEW CAR!",
    :description => "Four wheels and a engine",
    :price => 35000.00,
    :target => 10,
    :pledges => 2,
    :start => "2015-04-01 12:00:00",
    :ending => "2015-08-01 12:00:00",
    :user_id => 4)

Product.create!(
    :name => "Noise Canceling Head Phones",
    :description => "Good for planes",
    :price => 120.00,
    :target => 35,
    :pledges => 30,
    :start => "2014-12-25 12:00:00",
    :ending => "2015-09-04 12:00:00",
    :user_id => 5)

Product.create!(
    :name => "Tires",
    :description => "Round and made of rubber",
    :price => 220.00,
    :target => 300,
    :pledges => 30,
    :start => "2015-01-01 12:00:00",
    :ending => "2015-10-29 12:00:00",
    :user_id => 6)

Product.create!(
    :name => "Wolf Cola",
    :description => "Bubbly and delicious",
    :price => 0.25,
    :target => 24,
    :pledges => 4,
    :start => "2015-02-28 09:00:00",
    :ending => "2015-12-01 12:00:00",
    :user_id => 1)

Product.create!(
    :name => "Xbox One",
    :description => "Second-rate game console",
    :price => 300.00,
    :target => 100,
    :pledges => 69,
    :start => "2015-03-16 10:00:00",
    :ending => "2015-09-15 17:00:00",
    :user_id => 2)

Product.create!(
    :name => "Water Bed",
    :description => "More motion in the ocean",
    :price => 500.00,
    :target => 100,
    :pledges => 34,
    :start => "2015-03-22 08:00:00",
    :ending => "2015-11-04 08:30:00",
    :user_id => 4)

Product.create!(
    :name => "Turbocharger",
    :description => "Makes wolf cars fast",
    :price => 20.55,
    :target => 10,
    :pledges => 1,
    :start => "2015-01-21 05:00:00",
    :ending => "2015-08-04 10:30:00",
    :user_id => 4)

Product.create!(
    :name => "Galaxy SIII",
    :description => "Better than an iPhone",
    :price => 99,
    :target => 79,
    :pledges => 15,
    :start => "2015-02-15 05:00:00",
    :ending => "2015-08-30 10:30:0",
    :user_id => 3)

Product.create!(
    :name => "iPhone9",
    :description => "For those who think alike",
    :price => 199.99,
    :target => 79,
    :pledges => 14,
    :start => "2015-02-16 05:00:00",
    :ending => "2015-08-31 10:30:00",
    :user_id => 3)

Product.create!(
    :name => "Xbox 360",
    :description => "Outdated 2nd-rate console",
    :price => 99.99,
    :target => 10,
    :pledges => 0,
    :start => "2015-03-21 05:00:00",
    :ending => "2015-08-01 10:30:00 ",
    :user_id => 2)

Product.create!(
    :name => "Water bottles",
    :description => "For better hydration",
    :price => 12.00,
    :target => 100,
    :pledges => 37,
    :start => "2015-01-01 05:00:00",
    :ending => "2015-05-04 10:30:00",
    :user_id => 5)

Product.create!(
    :name => "Bubble mix",
    :description => "More fun for everyone",
    :price => 3.00,
    :target => 200,
    :pledges => 19,
    :start => "2015-03-21 05:00:00",
    :ending => "2015-10-04 10:30:00",
    :user_id => 1)

#Users---------------------------------------------- 

User.create!(
    :email => "drucker@google.com",
    :first_name => "Dan",
    :last_name => "Drucker",
    :password => "football",
    :password_confirmation => "football")
        
User.create!(
    :email => "garcia@yahoo.com",
    :first_name => "Will",
    :last_name => "Garcia",
    :password => "ilovecars",
    :password_confirmation => "ilovecars")
        
User.create!(
    :email => "kos@gmail.com",
    :first_name => "Markos",
    :last_name => "Georges",
    :password => "flaccosucks",
    :password_confirmation => "flaccosucks")

User.create!(
    :email => "will@msn.com",
    :first_name => "Will",
    :last_name => "Ely",
    :password => "bataviany",
    :password_confirmation => "bataviany")



