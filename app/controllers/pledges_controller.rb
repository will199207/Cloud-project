class PledgesController < ApplicationController
    def new (values)
    
    end
    def create
        @product = Product.find(params[:product_id])
        @product.pledge_count = @product.pledge_count + params[:pledge_num].to_i
        @product.save
        params[:user_id] = current_user.id
        params[:product_id] = @product.id.to_i
        values = create_update_params
        for i in 0..params[:pledge_num].to_i
            @pledge = Pledge.new(values)
            if not @pledge.save
                flash[:alert] = "Pledge could not go through. Try again"
                redirect_to product_path @pledge.product_id
            end
        end 
        flash[:notice] = "Your pledge went through!"
        redirect_to product_path @product

    end

    def show
<<<<<<< HEAD
        if !anyone_signed_in?
            flash[:alert] = "You must be logged in to buy a product!"
            deny_access
        else
            @pledge_num = params[:pledges]
            @product = Product.find(params[:id])
=======
        @product = Product.find(params[:id])
        redirect_to product_path @product.id if @product.pledges == @product.target
    	if !anyone_signed_in?
            flash[:alert] = "You must be logged in to buy a product!"
            deny_access
        else
            return @product
>>>>>>> 9e8e9db859c6866acbebeec61c3837b61f04aea6
        end
    end


    private
    def create_update_params
        params.require(:user_id)
        params.require(:product_id)
        params.permit(:user_id, :product_id)
    end
end
