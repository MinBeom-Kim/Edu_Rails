class AddMaxNumberToActiveClasses < ActiveRecord::Migration[5.2]
  def change
    add_column :active_classes, :max_number, :integer
  end
end
