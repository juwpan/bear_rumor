class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.text :body
      t.string :title
      t.string :name_author
      
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
