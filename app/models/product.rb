class Product < ActiveRecord::Base
    belongs_to :user

    def self.are_active
        self.where("end > #{DateTime.now}")
    end

    def self.are_active
        self.where("end <= #{DateTime.now}")
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
        self.order("target - pledges ASC")
    end
end
