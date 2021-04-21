class Product < ApplicationRecord
  belongs_to :reference
  belongs_to :category
  belongs_to :destination, optional: true
end
