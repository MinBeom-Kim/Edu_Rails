class CreateActiveClassLists < ActiveRecord::Migration[5.2]
  def change
    create_table :active_class_lists do |t|
      t.references :student, foreign_key: true
      t.references :active_class, foreign_key: true

      t.timestamps
    end
  end
end
