class CreateOutfitItems < ActiveRecord::Migration[5.2]
  def change
    create_table :outfit_items do |t|
      t.belongs_to :outfit, foreign_key: true
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
