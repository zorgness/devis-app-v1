class RemoveNameTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :name
  end
end
