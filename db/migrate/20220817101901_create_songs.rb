class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.text :body
      t.string :title
      t.string :author, index: { unique: true }
      
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
