class Product < ActiveRecord::Base
    belongs_to :user

    def self.are_active
        #self.where("end > #{DateTime.now.to_formatted_s(:db)}")
        self
    end

    def self.not_active
<<<<<<< HEAD
        self.where("end <= #{DateTime.now.to_formatted_s(:db)}")
=======
<<<<<<< HEAD
        self.where("end <= #{DateTime.now.to_formatted_s(:db)}")
=======
        self.where("end < #{DateTime.now.to_formatted_s(:db)}")
>>>>>>> f99f8f42ed338f89c8114d05713728f4980cfcb8
>>>>>>> 5b2ec6f708cccd1c169fbf121b18887057855d27
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
