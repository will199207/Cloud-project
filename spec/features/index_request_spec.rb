require 'rails_helper'

RSpec.describe "index page", type: :feature do 
    before :each do
       Product.create!(
            :name => "20 oz Bottles of Coke Cola", 
            :description => "Cheap Caffinee",
            :price => 1.50,
            :target => 100,
            :pledge_count => 50,
            :start => "2015-01-22 12:00:00",
            :ending => "2015-07-02 12:00:00",
            :user_id => 1)

        Product.create!(
            :name => "Laptop",
            :description => "Probably need one",
            :price => 550.00,
            :target => 20,
            :pledge_count => 6,
            :start => "2014-01-01 12:00:00",
            :ending => "2015-07-03 12:00:00",
            :user_id => 2)
        
        Product.create!(
            :name => "Children's Toy",
            :description => "Keep the kids quiet",
            :price => 15.99,
            :target => 200,
            :pledge_count => 150,
            :start => "2015-02-20 12:00:00",
            :ending => "2015-07-30 12:00:00",
            :user_id => 3)

        Product.create!(
            :name => "NEW CAR!",
            :description => "Four wheels and a engine",
            :price => 35000.00,
            :target => 10,
            :pledge_count => 2,
            :start => "2015-04-01 12:00:00",
            :ending => "2015-08-01 12:00:00",
            :user_id => 4)

        Product.create!(
            :name => "Noise Canceling Head Phones",
            :description => "Good for planes",
            :price => 120.00,
            :target => 35,
            :pledge_count => 30,
            :start => "2014-12-25 12:00:00",
            :ending => "2015-09-04 12:00:00",
            :user_id => 5)

        Product.create!(
            :name => "Tires",
            :description => "Round and made of ruber",
            :price => 220.00,
            :target => 300,
            :pledge_count => 30,
            :start => "2015-01-01 12:00:00",
            :ending => "2015-10-29 12:00:00",
            :user_id => 6)
        
        visit "/products"
    end 


    it "should show products in order by date added under Newly Added" do 
        start = []
        page.find(".newly_listed").all(".product").each do |x| 
            start << x.find(".timecreated").text
        end
        expect(start).to match_array(start.sort)
    end 

    it "should show products close to their target" do 
        percents = []
        page.find(".close_to_target").all(".product").each do |x| 
            percents << x.find(".percent").text
        end
        expect(percents).to match_array(percents.sort.reverse)

    end 

    it "should show products that are close to expiring" do 
        end_date = []
        page.find(".ending_soon").all(".product").each do |x|
            end_date << x.find(".timeleft").text            
        end
        expect(end_date).to match_array(end_date.sort)
    end 

end
