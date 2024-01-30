class AddCUsernamePhoneRoleCountryToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string                                                  
    add_column :users, :phone, :integer
    add_column :users, :role, :integer
    add_column :users, :country, :string

  end
end
