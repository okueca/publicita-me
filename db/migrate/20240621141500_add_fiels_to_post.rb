class AddFielsToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :timeDuration, :float
    add_column :posts, :unitDuration, :integer
  end
end
