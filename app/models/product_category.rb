class ProductCategory < ApplicationRecord
  belongs_to :restaurant # pertence a um restaurante

  has_many :products
end
