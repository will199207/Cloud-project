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
            :userid => 1)

        Product.create!(
            :name => "Laptop",
            :description => "Probably need one",
            :price => 550.00,
            :target => 20,
            :pledges => 6,
            :start => "2014-01-01 12:00:00",
            :end => "2015-04-03 12:00:00",
            :userid => 1)
        visit

