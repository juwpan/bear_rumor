class AddTeachToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :teach, :string
  end
end
