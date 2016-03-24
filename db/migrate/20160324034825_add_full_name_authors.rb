class AddFullNameAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :full_name, :string
  end
end
