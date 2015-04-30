class UsersController < ApplicationController
    before_filter :authenticate_user!

    def index
       @buying, @amount, @total_cost = Product.buying (current_user.id)
       @selling = Product.selling (current_user.id)
    end

end
