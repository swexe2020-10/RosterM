class RenameClassColumnToStudent < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :class, :course
  end
end
