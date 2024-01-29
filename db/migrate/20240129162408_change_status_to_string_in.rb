class ChangeStatusToStringIn < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :status, :integer, using: 'status::integer'
  end
end
