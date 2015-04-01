require 'rails_helper'

RSpec.describe "show page", type: :feature do
  before :each do
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

        visit "/products"
    end
    
    it "should should have a link to product 'Laptop'" do 
        expect(page).to have_link("Laptop")
    end 

    it "should have a link to product '20 oz Bottles of Coke Cola'" do 
        expect(page).to have_link("20 oz Bottles of Coke Cola")
    end 

    it "should show the page for each product when it's link is clicked" do 
        click_link("Laptop")
        expect(page).to have_link("Back to Home")
        expect(page).to have_content("Laptop")
        expect(page).to have_content("Probably need one")
        expect(page).to have_content("2")
        expect(page).to have_content("Pictures")
        expect(page).to have_content("550.00"
    end


