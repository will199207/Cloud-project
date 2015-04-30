# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Products----------------------------------------

Product.delete_all
User.delete_all
Pledge.delete_all

Product.create!(
    :name => "20 oz Bottles of Coke Cola", 
    :description => "Cheap Caffinee",
    :price => 1.50,
    :target => 100,
    :pledge_count => 26,
    :start => "2015-01-22 12:00:00",
    :ending => "2015-07-02 12:00:00",
    :user_id => 1)

Product.create!(
    :name => "Chewing Gum", 
    :description => "20 Sticks of BubbleYum, cotton candy flavored",
    :price => 0.30,
    :target => 300,
    :pledge_count => 280,
    :start => "2015-01-22 12:00:00",
    :ending => "2015-09-02 12:00:00",
    :user_id => 2)

Product.create!(
    :name => "Shower Speakers", 
    :description => "Waterproof and loud enough to play over your singing",
    :price => 50,
    :target => 65,
    :pledge_count => 63,
    :start => "2015-04-12 12:00:00",
    :ending => "2015-07-20 12:00:00",
    :user_id => 3)

Product.create!(
    :name => "40 Gallon Trash Bag (pack of 30)", 
    :description => "They'll help you clean your House",
    :price => 22.00,
    :target => 350,
    :pledge_count => 280,
    :start => "2015-03-22 12:00:00",
    :ending => "2015-07-16 12:00:00",
    :user_id => 3)

Product.create!(
    :name => "Flat Screen TV!", 
    :description => "Large with a nice picture",
    :price => 1000,
    :target => 22,
    :pledge_count => 14,
    :start => "2015-01-22 12:00:00",
    :ending => "2015-07-04 12:00:00",
    :user_id => 3)

Product.create!(
    :name => "Window", 
    :description => "Cracked, good deal",
    :price => 15,
    :target => 20,
    :pledge_count => 12,
    :start => "2015-03-02 12:00:00",
    :ending => "2015-06-02 12:00:00",
    :user_id => 2)

Product.create!(
    :name => "Startup Social Networking Company", 
    :description => "The next facebook",
    :price => 2000000,
    :target => 5,
    :pledge_count => 0,
    :start => "2015-01-25 12:00:00",
    :ending => "2015-09-02 12:00:00",
    :user_id => 3)

Product.create!(
    :name => "1 pound of M & M", 
    :description => "Round chocolate candies, enough for all your friends too",
    :price => 12.50,
    :target => 100,
    :pledge_count => 68,
    :start => "2015-02-20 12:00:00",
    :ending => "2015-08-02 12:00:00",
    :user_id => 3)


Product.create!(
    :name => "Laptop",
    :description => "Probably need one",
    :price => 550.00,
    :target => 20,
    :pledge_count => 11,
    :start => "2014-01-01 12:00:00",
    :ending => "2015-07-03 12:00:00",
    :user_id => 2)
        
Product.create!(
    :name => "Children's Toy",
    :description => "Keep the kids quiet",
    :price => 15.99,
    :target => 200,
    :pledge_count => 123,
    :start => "2015-02-20 12:00:00",
    :ending => "2015-07-30 12:00:00",
    :user_id => 3)

Product.create!(
    :name => "NEW CAR!",
    :description => "Four wheels and a engine",
    :price => 35000.00,
    :target => 10,
    :pledge_count => 3,
    :start => "2015-04-01 12:00:00",
    :ending => "2015-08-01 12:00:00",
    :user_id => 4)

Product.create!(
    :name => "Noise Canceling Head Phones",
    :description => "Good for planes",
    :price => 120.00,
    :target => 35,
    :pledge_count => 23,
    :start => "2014-12-25 12:00:00",
    :ending => "2015-09-04 12:00:00",
    :user_id => 5)

Product.create!(
    :name => "Tires",
    :description => "Round and made of rubber",
    :price => 220.00,
    :target => 300,
    :pledge_count => 41,
    :start => "2015-01-01 12:00:00",
    :ending => "2015-10-29 12:00:00",
    :user_id => 6)

Product.create!(
    :name => "Wolf Cola",
    :description => "Bubbly and delicious",
    :price => 0.25,
    :target => 24,
    :pledge_count => 9,
    :start => "2015-02-28 09:00:00",
    :ending => "2015-12-01 12:00:00",
    :user_id => 1)

Product.create!(
    :name => "Xbox One",
    :description => "Second-rate game console",
    :price => 300.00,
    :target => 100,
    :pledge_count => 34,
    :start => "2015-03-16 10:00:00",
    :ending => "2015-09-15 17:00:00",
    :user_id => 2)

Product.create!(
    :name => "Water Bed",
    :description => "More motion in the ocean",
    :price => 500.00,
    :target => 100,
    :pledge_count => 16,
    :start => "2015-03-22 08:00:00",
    :ending => "2015-11-04 08:30:00",
    :user_id => 4)

Product.create!(
    :name => "Turbocharger",
    :description => "Makes wolf cars fast",
    :price => 20.55,
    :target => 10,
    :pledge_count => 1,
    :start => "2015-01-21 05:00:00",
    :ending => "2015-08-04 10:30:00",
    :user_id => 4)

Product.create!(
    :name => "Galaxy SIII",
    :description => "Better than an iPhone",
    :price => 99,
    :target => 79,
    :pledge_count => 33,
    :start => "2015-02-15 05:00:00",
    :ending => "2015-08-30 10:30:0",
    :user_id => 3)

Product.create!(
    :name => "iPhone9",
    :description => "For those who think alike",
    :price => 199.99,
    :target => 999,
    :pledge_count => 888,
    :start => "2015-02-16 05:00:00",
    :ending => "2015-08-31 10:30:00",
    :user_id => 3)

Product.create!(
    :name => "Xbox 360",
    :description => "Outdated 2nd-rate console",
    :price => 99.99,
    :target => 10,
    :pledge_count => 3,
    :start => "2015-03-21 05:00:00",
    :ending => "2015-08-01 10:30:00 ",
    :user_id => 2)

Product.create!(
    :name => "Water bottles",
    :description => "For better hydration",
    :price => 12.00,
    :target => 100,
    :pledge_count => 99,
    :start => "2015-01-01 05:00:00",
    :ending => "2015-05-04 10:30:00",
    :user_id => 5)

Product.create!(
    :name => "Bubble mix",
    :description => "More fun for everyone",
    :price => 3.00,
    :target => 123,
    :pledge_count => 100,
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
    :email => "test1@google.com",
    :first_name => "Test User1",
    :last_name => "Drucker",
    :password => "password",
    :password_confirmation => "password")

User.create!(
    :email => "test2@google.com",
    :first_name => "Test User2",
    :last_name => "Drucker",
    :password => "password",
    :password_confirmation => "password")


        
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

#Pledges------------------------------------------

for i in 0..26
	Pledge.create!(
	    :user_id => 4,
	    :product_id => 1)
end

for i in 0..280
	Pledge.create!(
	    :user_id => 3,
	    :product_id => 2)
end

for i in 0..63
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 3)
end

for i in 0..280
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 4)
end

for i in 0..14
	Pledge.create!(
	    :user_id => 4,
	    :product_id => 5)
end

for i in 0..12
	Pledge.create!(
	    :user_id => 3,
	    :product_id => 6)
end

for i in 0..0
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 7)
end

for i in 0..68
	Pledge.create!(
	    :user_id => 3,
	    :product_id => 8)
end

for i in 0..11
	Pledge.create!(
	    :user_id => 4,
	    :product_id => 9)
end

for i in 0..123
	Pledge.create!(
	    :user_id => 3,
	    :product_id => 10)
end

for i in 0..3
	Pledge.create!(
	    :user_id => 3,
	    :product_id => 11)
end

for i in 0..23
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 12)
end


for i in 0..41
	Pledge.create!(
	    :user_id => 3,
	    :product_id => 13)
end

for i in 0..9
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 14)
end

for i in 0..34
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 15)
end

for i in 0..16
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 16)
end

for i in 0..1
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 17)
end

for i in 0..33
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 18)
end

for i in 0..888
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 19)
end

for i in 0..3
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 20)
end

for i in 0..99
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 21)
end

for i in 0..100
	Pledge.create!(
	    :user_id => 2,
	    :product_id => 22)
end
