class Product < ApplicationRecord
  belongs_to :reference
  belongs_to :category
  belongs_to :destination, optional: true

  before_save :assign_destination

  def assign_destination
    ref_destinations = Destination.joins(:references).where(references: {id: reference_id})

    if ref_destinations.empty?
      cat_destinations = Destination.joins(:categories).where(categories: {id: category_id})

      if cat_destinations.empty?
        price_destinations = Destination.order(maximum_product_price: :desc)
        self.destination = price_destinations.first
      else
        self.destination = cat_destinations.first
      end
    else
      self.destination = ref_destinations.first
    end
  end
end
