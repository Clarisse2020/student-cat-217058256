class CreateStudentAppCatRegnos < ActiveRecord::Migration[5.2]
  def change
    create_table :student_app_cat_regnos do |t|
      t.integer :registrationnumber
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
