class RemoveScreenFromScreenPrice < ActiveRecord::Migration[7.0]
  def change
    remove_column :screen_prices, :screen, :string
  end
end
