class ChangeStatusIntegerInPayments < ActiveRecord::Migration[7.0]
  def change
    change_column :payments, :status, :integer,  using: 'status::integer'
  end
end
