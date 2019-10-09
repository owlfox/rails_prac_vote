class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :title
      t.string :address
      t.string :phone
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
