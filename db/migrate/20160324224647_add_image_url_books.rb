class AddImageUrlBooks < ActiveRecord::Migration
  def change
    add_column :books, :image_url, :string
  end
end
