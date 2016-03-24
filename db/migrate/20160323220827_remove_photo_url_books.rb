class RemovePhotoUrlBooks < ActiveRecord::Migration
  def change
    remove_column :books, :photo_url, :string
  end
end
