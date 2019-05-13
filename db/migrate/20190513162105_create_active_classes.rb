class CreateActiveClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :active_classes do |t|
      t.string :class_name

      t.timestamps
    end
  end
end
