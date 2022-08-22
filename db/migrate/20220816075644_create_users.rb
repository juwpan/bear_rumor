class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname, unique: true
      t.date :birth_date
      t.string :avatar
      t.string :email

      t.timestamps
    end
  end
end
