class CreateScreenPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :screen_prices do |t|
      t.string :screen
      t.float :price
      t.integer :unit_price

      t.timestamps
    end
  end
end
