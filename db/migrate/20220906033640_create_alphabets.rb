class CreateAlphabets < ActiveRecord::Migration[7.0]
  def change
    create_table :alphabets do |t|
      t.string :abc

      t.timestamps
    end
  end
end
