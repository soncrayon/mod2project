class OutfitItem < ApplicationRecord
  belongs_to :outfit, required: false
  belongs_to :item, required: false
end
