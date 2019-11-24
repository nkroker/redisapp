class CreateLetters < ActiveRecord::Migration[5.2]
  def change
    create_table :letters do |t|
      t.string :name
      t.text :description
      t.integer :score

      t.timestamps
    end
  end
end
