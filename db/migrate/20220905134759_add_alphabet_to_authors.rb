class AddAlphabetToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :letter, :string
  end
end
