class AddContentToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :content, :string
    add_column :posts, :content_type, :integer
  end
end
