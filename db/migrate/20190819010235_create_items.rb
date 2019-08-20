class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.belongs_to :category, foreign_key: true
      t.belongs_to :style, foreign_key: true

      t.timestamps
    end
  end
end
