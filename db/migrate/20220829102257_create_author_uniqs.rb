class CreateAuthorUniqs < ActiveRecord::Migration[7.0]
  def change
    create_table :author_uniqs do |t|
      t.references :author, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
