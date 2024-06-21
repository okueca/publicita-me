class AddProviderToScreens < ActiveRecord::Migration[7.0]
  def change
    add_column :screens, :provider, :string
  end
end
