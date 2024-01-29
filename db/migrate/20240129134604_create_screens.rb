class CreateScreens < ActiveRecord::Migration[7.0]
  def change
    create_table :screens do |t|
      t.string :name
      t.string :country
      t.string :location
      t.integer :post_id
      t.string :dimensions
      t.integer :stream_price
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
