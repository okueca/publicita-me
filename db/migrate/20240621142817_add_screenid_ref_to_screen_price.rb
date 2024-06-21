class AddScreenidRefToScreenPrice < ActiveRecord::Migration[7.0]
  def change
    add_reference :screen_prices, :screen, null: false, foreign_key: true
  end
end
