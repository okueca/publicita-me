class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :method
      t.integer :user_id
      t.integer :post_id
      t.integer :amount
      t.string :status

      t.timestamps
    end
  end
end
