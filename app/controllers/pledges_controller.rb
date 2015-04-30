class PledgesController < ApplicationController
    def new
    end


    def create
        @product = Product.find(params[:product_id])
        @product.pledge_count = @product.pledge_count + params[:pledge_num].to_i
        @product.save
        @pledge = Pledge.new({:user_id => params[:user_id], :product_id => params[:product_id]})
        if @pledge.save
            flash[:notice] = "Your pledge went through!"
            redirect_to product_path @pledge.product_id
        else
            flash[:alert] = "Pledge could not go through. Try again"
            redirect_to product_path @pledge.product_id
        end
    end

    def show
    	if !anyone_signed_in?
            flash[:alert] = "You must be logged in to buy a product!"
            deny_access
        else
            @product = Product.find(params[:id])
        end
    end




    private
    def pledge_update_params
        params.require(:user_id).require(:product_id)
    end
end
