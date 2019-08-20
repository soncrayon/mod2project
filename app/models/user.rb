class User < ApplicationRecord
    has_many :outfits
    has_many :outfit_items, through: :outfits

    def to_s
        self.first_name + ' ' + self.last_name 
    end
end
