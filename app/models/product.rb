class Product < ActiveRecord::Base
    belongs_to :user
    
    @orders = Hash["1" => "end ASC",
				   "2" => "price ASC",
				   "3" => "price DESC",
				   "4" => "target - pledges ASC",
				   "5" => "start ASC"]
    
    # search stuff --------------------------------------------
    def self.search(query)
		return all if query.blank?

		conditions = []
		search_columns = [ :name, :description ]

		query.split(' ').each do |word|
			search_columns.each do |column|
				conditions << " lower(#{column}) LIKE lower(#{sanitize("%#{word}%")}) "
			end
		end

		conditions = conditions.join('OR')    
		self.where(conditions)
	end

    def self.sort_by(field)
        return Product.order(@orders[field])
    end

    #search stuff ----------------------------------------------

    def self.are_active
        self.where("end > '#{DateTime.now.to_formatted_s(:db)}'")
        
    end

    def self.not_active
        self.where("end <= '#{DateTime.now.to_formatted_s(:db)}'")
    end

    def self.target_not_hit
        self.where("target > pledges")
    end
    
    def self.target_hit
        self.where("target = pledges")
    end

    def self.oldest
        self.order("start ASC")
    end

    def self.newest
        self.order("start DESC")
    end

    def self.almost_expired
        self.order("end ASC")
    end

    def self.almost_targeted
        self.order("(pledges/(target * 1.0)) DESC")
    end
end
