class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.decimal :maximum_product_price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
