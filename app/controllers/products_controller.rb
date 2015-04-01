class ProductsController < ApplicationController
    def index
        @new = Product.are_active.newest.limit(10)
        @almost = Product.are_active.almost_targeted.limit(10)
        @expiring = Product.are_active.almost_expired.limit(10)
    end

    def show
        @product = Product.find(params[:id])
    end

private
    def create_update_params
        params.require(:product).permit(:name, :description, :price, :minimum_age_appropriate, :maximum_age_appropriate, :image)
    end
end
