class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable and :timeoutable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
    
    #has_many :products

    before_save { self.email = email.downcase }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i



    def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
	data = access_token.info
	user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
	if user
	    return user
	else
	    registered_user = User.where(:email => access_token.info.email).first
	    if registered_user
		return registered_user
	    else
                byebug
	        user = User.create(
                first_name: data["first_name"],
                last_name: data["last_name"],
		provider:access_token.provider,
		email: data["email"],
		uid: access_token.uid ,
		password: Devise.friendly_token[0,20],
                #picture: data["picture"]
		)
	    end
	end
    end
    
end
    
