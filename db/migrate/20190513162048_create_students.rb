class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :student_name

      t.timestamps
    end
  end
end
