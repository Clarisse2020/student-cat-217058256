class CreateTonnies < ActiveRecord::Migration[5.2]
  def change
    create_table :tonnies do |t|
      t.integer :regno
      t.string :name
      t.string :telephone
      t.text :address

      t.timestamps
    end
  end
end
