class UsersController < ApplicationController
    before_filter :authenticate_user!

    def index
       @buying  = Product.all
       @selling = Product.where("user_id = #{current_user.id}")
    end

end
