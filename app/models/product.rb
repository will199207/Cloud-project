class Product < ActiveRecord::Base
    belongs_to :user
    has_many :pledges
    has_many :users, :through => :pledges

    @orders = Hash["1" => "ending ASC",
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
        self.where("ending > '#{DateTime.now.to_formatted_s(:db)}'")
    end

    #def self.not_active
    #    self.where("end <= '#{DateTime.now.to_formatted_s(:db)}'")
    #end

    #def self.target_not_hit
    #    self.where("target > pledge_count")
    #end
    
    #def self.target_hit
    #    self.where("target = pledge_count")
    #end

    #def self.oldest
    #    self.order("start ASC")
    #end

    def self.newest
        self.order("start DESC")
    end

    def self.almost_expired
        self.order("ending ASC")
    end

    def self.almost_targeted
        self.order("(pledge_count/(target * 1.0)) DESC")
    end
end
