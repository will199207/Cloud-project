require 'rails_helper'
RSpec.describe "show page", type: :feature do
    
    fields = [
        "name", 
        "description",
        "target", 
        "price"]

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
    
    it "should have a post button" do 
        click_link("Create New Product")
        expect(page).to have_submit_button("Post")
    end 
end



