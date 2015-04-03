class ProductsController < ApplicationController
    def index
        @new = Product.are_active.newest.limit(10)
        @almost = Product.are_active.almost_targeted.limit(10)
        @expiring = Product.are_active.almost_expired.limit(10)
    end

    def show
	@product = Product.find(params[:id])
    end

    def confirm
        @product = Product.find(params[:id])
    end
    def new
	@product = Product.new
    end

    def create
		values = create_update_params
		values[:start] = DateTime.now.to_formatted_s(:db)
        values[:end] = fix_date(values.delete("end(1i)"), values.delete("end(2i)"), values.delete("end(3i)"), values.delete("end(4i)"), values.delete("end(5i)")) 
		values[:pledges] = 0
		values[:user_id] = User.pluck(:id).sample
        p = Product.new(values)
        if p.save
            flash[:notice] = "New product #{p.name} created successfully"
            redirect_to products_path
        else
            flash[:alert] = "Product couldn't be created"
            redirect_to new_product_path
        end
    end


private
    def create_update_params
        params.require(:product).permit(:name, :description, :price, :target, :pledges, :start, :end, :user_id)
    end
end

def fix_date(year, month, day, hour, minute)
    s = String.new
    month = month.to_s
    day = day.to_s
    month = month.prepend("0") if month.length == 1
    day = day.prepend("0") if day.length == 1
    s << year.to_s << "-" << month << "-" << day << " " << hour.to_s << ":" << minute.to_s << ":" << "00"
end
