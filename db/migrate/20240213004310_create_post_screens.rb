class CreatePostScreens < ActiveRecord::Migration[7.0]
  def change
    create_table :post_screens do |t|
      t.references :post, null: false, foreign_key: true
      t.references :screen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
