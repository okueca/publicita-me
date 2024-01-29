class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
