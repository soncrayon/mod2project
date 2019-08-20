class Item < ApplicationRecord
  belongs_to :category, required: false 
  belongs_to :style, required: false 
  has_many :outfit_items
  has_many :outfits, through: :outfit_items 
end
