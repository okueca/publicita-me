class ChangeStatusToStringInScreens < ActiveRecord::Migration[7.0]
  def change
    change_column :screens, :status, :integer,  using: 'status::integer'
  end
end
