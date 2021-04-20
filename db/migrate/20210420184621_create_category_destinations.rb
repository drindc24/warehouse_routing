class CreateCategoryDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :category_destinations do |t|
      t.integer :category_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
