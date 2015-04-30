class PledgesController < ApplicationController
    def create
        values = create_update_params
        p = Pledge.new(values)
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
    def create_update_params
        params.require(:pledges).permit(:user_id, :product_id)
    end
end
