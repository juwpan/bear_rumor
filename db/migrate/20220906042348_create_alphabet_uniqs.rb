class CreateAlphabetUniqs < ActiveRecord::Migration[7.0]
  def change
    create_table :alphabet_uniqs do |t|
      t.references :author, null: false, foreign_key: true
      t.references :alphabet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
