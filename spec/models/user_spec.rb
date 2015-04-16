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
        
    context "the user model" do
        it "should implement the find_for_google_oauth2 method correctly" do
            #user.stub(:message) { :return_val
            expect(User).to receive(:find_for_google_oauth2).with("token", "idk") 
            User.find_for_google_oauth2("token", "idk")
            #@user.find_for_google_oauth2("token", true)
            
        end
    end
end

