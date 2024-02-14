class RemovePostIdFromScreens < ActiveRecord::Migration[7.0]
  def change
    remove_column :screens, :post_id
  end
end
