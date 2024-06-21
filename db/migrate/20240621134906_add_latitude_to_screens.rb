class AddLatitudeToScreens < ActiveRecord::Migration[7.0]
  def change
    add_column :screens, :latitude, :float
  end
end
