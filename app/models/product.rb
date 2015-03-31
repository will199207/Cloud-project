class Product < ActiveRecord::Base
    attr_accessible :name, :description, :price, :target, :pledges, :start, :end
    belongs_to :user
end
