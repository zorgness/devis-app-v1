class AddReferenceElementToTasks < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :element, index: true, foreign_key: true
  end
end
