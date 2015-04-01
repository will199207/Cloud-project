require 'rails_helper'
RSpec.describe "show page", type: :feature do
    
    fields = [
        "Product Name", 
        "Product Description",
        "Target Number for Sale", 
        "Price"]

    before :each do
        visit "/products"
    end

    it "should have a link on the home page to create a new product" do 
        expect(page).to have_link("Create New Product")
    end

    it "should have the correct fields" do
        click_link("Create New Product")
        fields.each do |x|
            expect(page).to have_field(x)
        end
    end
    
    it "should have a post link" do 
        click_link("Create New Product")
        expect(page).to have_button("Post")
    end 

    it "should redirect to index on a Post" do 
        click_link("Create New Product")
        click_button("Post")
        response.should redirect_to '/products'
    end
end



