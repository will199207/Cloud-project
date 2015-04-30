class PledgesController < ApplicationController
    def create
        #values = pledge_update_params
        product = Product.where("id = #{params[:product_id]}")
        product.pledge_count = product.pledge_count + params[:pledge_num]
        product.save
        p = Pledge.new({:user_id => params[:user_id], :product_id => params[:product_id]})
        if p.save
            flash[:notice] = "Your pledge went through!"
            redirect_to product_path p.product_id
        else
            flash[:alert] = "Pledge could not go through. Try again"
            redirect_to product_path p.product_id
        end
    end

    def show
        @product = Product.find(params[:id])
    end




    private
    def pledge_update_params
        params.require(:user_id).require(:product_id)
    end
end
