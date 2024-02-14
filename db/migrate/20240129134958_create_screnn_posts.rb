class CreateScrennPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :screnn_posts do |t|
      t.integer :screen_id
      t.integer :post_id

      t.timestamps
    end
  end
end
