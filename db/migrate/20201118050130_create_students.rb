class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :students_id
      t.integer :student_number
      t.string :name
      t.string :name_furi
      t.integer :grade
      t.integer :class
      t.string :message

      t.timestamps
    end
  end
end
