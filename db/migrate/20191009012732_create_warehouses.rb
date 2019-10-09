class CreateWarehouses < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouses do |t|
      t.references :store, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
