class ChangeStreamPriceFromScreens < ActiveRecord::Migration[7.0]
  def change
    change_column :screens, :stream_price, :float
  end
end
