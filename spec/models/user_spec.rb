require 'rails_helper'

RSpec.describe User, type: :model do
    before :each do 
        @user = User.create!(
            :email => "will@msn.com",
            :first_name => "Will",
            :last_name => "Ely",
            :password => "bataviany",
            :password_confirmation => "bataviany",
            :provider => "google",
            :uid => 99999)
    end 
    context "the create user method" do 
        it "should allow the user to have been created" do 
            
        end
    
        it "should show that user has a correct email" do
            expect(@user.email).to match("will@msn.com")
        end
        it "should show that user has a correct first_name" do
            expect(@user.first_name).to match("Will")
        end 
        it "should show that user has a correct last_name" do 
            expect(@user.last_name).to match("Ely")
        end 
        it "should show that user has the correct password" do 
            expect(@user.password).to match("bataviany")
        end 
    end
end

