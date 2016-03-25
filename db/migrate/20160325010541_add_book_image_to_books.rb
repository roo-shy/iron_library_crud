class AddBookImageToBooks < ActiveRecord::Migration
  def change
    add_column :books, :book_image_id, :string
  end
end
