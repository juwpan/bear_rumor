class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.text :body
      t.string :name
      t.string :author, index: { unique: true }

      t.timestamps
    end
  end
end
