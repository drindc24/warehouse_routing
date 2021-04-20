class CategoryDestination < ApplicationRecord
  belongs_to :category
  belongs_to :destination
end
