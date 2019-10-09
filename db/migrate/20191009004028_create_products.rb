class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :price
      t.text :description
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
