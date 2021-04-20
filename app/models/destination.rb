class Destination < ApplicationRecord
  has_many :references
  has_many :category_destinations
  has_many :categories, through: :category_destinations

  validates :maximum_product_price, numericality: { greater_than: 0 }
end
