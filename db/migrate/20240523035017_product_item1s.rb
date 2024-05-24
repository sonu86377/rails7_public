class ProductItem1s < ActiveRecord::Migration[7.0]
  def change
    add_index :product_item1s, :about_product
    remove_column :product_item1s, :description, :string
  end
end
