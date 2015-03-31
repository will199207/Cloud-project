class ProductsController < ApplicationController
    def index











private
    def create_update_params
        params.require(:product).permit(:name, :description, :price, :minimum_age_appropriate, :maximum_age_appropriate, :image)
    end
end
