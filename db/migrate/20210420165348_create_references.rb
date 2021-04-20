class CreateReferences < ActiveRecord::Migration[6.1]
  def change
    create_table :references do |t|
      t.string :ref_code
      t.integer :destination_id

      t.timestamps
    end
  end
end
