require 'rails_helper'

RSpec.describe "index page", type: :feature do 
    
    let (:newly_added) { ["NEW CAR!", "Children's Toy", "20 oz Bottles of Coke Cola", "Tires", "Noise Canceling Head Phones", "Laptop"] }
    let (:close_to_target) { [ "Noise Canceling Head Phones", "Children's Toy", "20 oz Bottles of Coke Cola", "Laptop", "Tires", "NEW! CAR"] }
    let (:ending) { ["20 oz Bottles of Coke Cola", "Laptop", "Noise Canceling Head Phones", "Tires", "Children's Toy", "NEW! CAR"] }

    before :each do
        Product.create!(
            :name => "20 oz Bottles of Coke Cola", 
            :description => "Cheap Caffinee",
            :price => 1.50,
            :target => 100,
            :pledges => 50,
            :start => "2015-01-22 12:00:00",
            :end => "2015-04-02 12:00:00",
            :userid => 1)

        Product.create!(
            :name => "Laptop",
            :description => "Probably need one",
            :price => 550.00,
            :target => 20,
            :pledges => 6,
            :start => "2014-01-01 12:00:00",
            :end => "2015-04-03 12:00:00",
            :userid => 2)
        
        Product.create!(
            :name => "Children's Toy",
            :description => "Keep the kids quiet",
            :price => 15.99,
            :target => 200,
            :pledges => 150,
            :start => "2015-02-20 12:00:00",
            :end => "2015-04-30 12:00:00",
            :userid => 3)

        Product.create!(
            :name => "NEW CAR!",
            :description => "Four wheels and a engine",
            :price => 35000.00,
            :target => 10,
            :pledges => 2,
            :start => "2015-04-01 12:00:00",
            :end => "2015-05-1 12:00:00",
            :userid => 4)

        Product.create!(
            :name => "Noise Canceling Head Phones",
            :description => "Good for planes",
            :price => 120.00,
            :target => 35,
            :pledges => 30,
            :start => "2014-12-25 12:00:00",
            :end => "2015-04-04 12:00:00",
            :userid => 5)

        Product.create!(
            :name => "Tires",
            :description => "Round and made of ruber",
            :price => 220.00,
            :target => 300,
            :pledges => 30,
            :start => "2015-01-01 12:00:00",
            :end => "2015-04-29 12:00:00",
            :userid => 6)

        visit "/products"
    end 


    it "should show products in order by date added under Newly Added" do 
        product_date_added = []
        page.all(".productsbynew").each { |x| product_date_added << x.text }
        expect(product_date_added).to match_array(newly_added)
    end 

    it "should show products close to their target" do 
        products_close_to_target = []
        page.all(".productsbytarget").each { |x| products_close_to_target << x.text }
        expect(products_close_to_target).to match_array(close_to_target)
    end 

    it "should show products that are close to expiring" do 
        products_ending = []
        page.all(".productsbyending").each { |x| products_ending << x.text }
        expect(products_ending).to match_array(ending)
    end 
    
    it "should have a search button" do
        expect(page).to have_submit_button("Search")
    end

    it "should have five categories" do
        #expect(page).to have_content("Auto")
        pending "add some code"
    end

end
