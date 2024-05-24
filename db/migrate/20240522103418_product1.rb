class Product1 < ActiveRecord::Migration[7.0]
  def change
    add_column :product_item1s, :about_product, :string
  end
end
