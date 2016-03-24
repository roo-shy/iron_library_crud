class RemoveBookImageBooks < ActiveRecord::Migration
  def change
    remove_column :books, :book_image_id, :string
  end
end
