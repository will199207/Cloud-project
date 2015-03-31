require 'rails_helper'

RSpec.describe "index page", type: :feature do
  before :each do
    Product.create!(

    visit "/products"
  end

  it "should have links from each product name to 'show' pages" do
    expect(page).to have_link("apple corer")
    expect(page).to have_link("banana peeler")
  end

  it "show link for product should show details for the product" do
    click_link("apple corer")
    expect(page).to have_link("Back to product list")
    expect(page).to have_content("apple corer")
    expect(page).to have_content("apple description")
    expect(page).to have_content("1.99")
    expect(page).to have_content("3 and above")
  end

  it "show link for product should show details for the product" do
    click_link("banana peeler")
    expect(page).to have_link("Back to product list")
    expect(page).to have_content("banana peeler")
    expect(page).to have_content("banana description")
    expect(page).to have_content("2.99")
    expect(page).to have_content("Age 2")
  end

end
