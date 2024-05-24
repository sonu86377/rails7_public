class ProductItem1 < ApplicationRecord
    has_one_attached :product_image
    self.per_page=3
end
