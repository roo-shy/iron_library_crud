class RemoveFirstNameLastNameAuthors < ActiveRecord::Migration
  def change
    remove_column :authors, :first_name, :string
    remove_column :authors, :last_name, :string
  end
end
