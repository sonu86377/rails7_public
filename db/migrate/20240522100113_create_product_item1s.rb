class CreateProductItem1s < ActiveRecord::Migration[7.0]
  def change
    create_table :product_item1s do |t|
      t.string :name
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
