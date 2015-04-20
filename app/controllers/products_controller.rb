class ProductsController < ApplicationController
    def index
        @new = Product.are_active.newest
        @almost = Product.are_active.almost_targeted
        @expiring = Product.are_active.almost_expired
    end

    def show
		@product = Product.find(params[:id])
    end
    #def confirm
        #@product = Product.find(params[:id])
    #end
    def new
		redirect_to new_user_session_path if !user_signed_in?
	    @product = Product.new
    end

    def search
        if params.has_key?(:search) and params.has_key?(:field)
	    @products = Product.search(params[:search]).sort_by(params[:field])
	    if @products.blank?
		flash[:alert] = "Search did not return any results"
	    end
	    return @products

	else	
	    if params.has_key?(:search)
	        order = params[:search]
                session[:search] = params[:search]
	    elsif session.has_key?(:search)
                order = session[:search]
            else
                order = ""
            end		
			
	    if params.has_key?(:field)
	        field = params[:field]
                session[:field] = params[:field]
	    elsif session.has_key?(:field)
                field = session[:field]
            else
                field = ""
	    end
	end
	flash.clear
	redirect_to search_path :search => order, :field => field
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

    def fix_date(year, month, day, hour, minute)
        s = String.new
        month = month.to_s
        day = day.to_s
        month = month.prepend("0") if month.length == 1
        day = day.prepend("0") if day.length == 1
        s << year.to_s << "-" << month << "-" << day << " " << hour.to_s << ":" << minute.to_s << ":" << "00"
    end
end
