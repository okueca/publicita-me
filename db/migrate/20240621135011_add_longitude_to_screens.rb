class AddLongitudeToScreens < ActiveRecord::Migration[7.0]
  def change
    add_column :screens, :longitude, :float
  end
end
