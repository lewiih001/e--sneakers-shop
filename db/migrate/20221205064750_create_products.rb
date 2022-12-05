class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :image_url
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :released_year
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
