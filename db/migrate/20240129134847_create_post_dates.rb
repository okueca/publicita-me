class CreatePostDates < ActiveRecord::Migration[7.0]
  def change
    create_table :post_dates do |t|
      t.integer :post_id
      t.datetime :date
      t.integer :frequency

      t.timestamps
    end
  end
end
