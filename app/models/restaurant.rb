class Restaurant < ApplicationRecord
  belongs_to :category # um restaurante está contectado a uma categoria

  has_many :product_categories
  has_many :orders
end
