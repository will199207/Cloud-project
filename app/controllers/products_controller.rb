class ProductsController < ApplicationController
    def index
        @new = Product.are_active.newest
        @almost = Product.are_active.almost_targeted
        @expiring = Product.are_active.almost_expired
    end

    def show
	@product = Product.find(params[:id])
    end
    
    def new
	#redirect_to new_user_session_path if !user_signed_in?
	if !anyone_signed_in?
            deny_access
        else
            @product = Product.new
        end
    end

    def search
        if params.has_key?(:search) and params.has_key?(:field)
           @products = Product.search(params[:search]).sort_by(params[:field])
        if @products.blank?
            flash.now[:alert] = "Search did not return any results"
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
	redirect_to search_path :search => order, :field => field
    end

    def create
	values = create_update_params
        # check to make sure the user has input all the required information
        if values[:name] == ""
            flash[:alert] = "Failed to create new product listing. No name specified"
            redirect_to(products_path) and return
        end
        if values[:target] == ""
            flash[:alert] = "Failed to create new product listing. No target specified"
            redirect_to products_path and return
        end
        if values[:price] == ""
            flash[:alert] = "Failed to create new product listing. No price specified"
            redirect_to products_path and return
        end
        if values[:target] == ""
            flash[:alert] = "Failed to create new product listing. No ending date specified"
            redirect_to products_path and return
        end

	values[:start] = DateTime.now.to_formatted_s(:db)
        values[:ending] = fix_date(values.delete("ending(1i)"), values.delete("ending(2i)"), values.delete("ending(3i)"), values.delete("ending(4i)"), values.delete("ending(5i)")) 
	values[:pledge_count] = 0
	values[:user_id] = current_user.id
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
        params.require(:product).permit(:name, :description, :price, :target, :pledge_count, :start, :ending, :user_id)
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
