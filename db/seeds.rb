# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create!(
            :name => "20 oz Bottles of Coke Cola", 
            :description => "Cheap Caffinee",
            :price => 1.50,
            :target => 100,
            :pledges => 50,
            :start => "2015-01-22 12:00:00",
            :end => "2015-04-02 12:00:00",
            :user_id => 1)

        Product.create!(
            :name => "Laptop",
            :description => "Probably need one",
            :price => 550.00,
            :target => 20,
            :pledges => 6,
            :start => "2014-01-01 12:00:00",
            :end => "2015-04-03 12:00:00",
            :user_id => 2)
        
        Product.create!(
            :name => "Children's Toy",
            :description => "Keep the kids quiet",
            :price => 15.99,
            :target => 200,
            :pledges => 150,
            :start => "2015-02-20 12:00:00",
            :end => "2015-04-30 12:00:00",
            :user_id => 3)

        Product.create!(
            :name => "NEW CAR!",
            :description => "Four wheels and a engine",
            :price => 35000.00,
            :target => 10,
            :pledges => 2,
            :start => "2015-04-01 12:00:00",
            :end => "2015-05-1 12:00:00",
            :user_id => 4)

        Product.create!(
            :name => "Noise Canceling Head Phones",
            :description => "Good for planes",
            :price => 120.00,
            :target => 35,
            :pledges => 30,
            :start => "2014-12-25 12:00:00",
            :end => "2015-04-04 12:00:00",
            :user_id => 5)

        Product.create!(
            :name => "Tires",
            :description => "Round and made of ruber",
            :price => 220.00,
            :target => 300,
            :pledges => 30,
            :start => "2015-01-01 12:00:00",
            :end => "2015-04-29 12:00:00",
            :user_id => 6)
        
        User.create!(
			:email => "druckcity@google.com",
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
