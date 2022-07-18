class RemoveReferencesProduct < ActiveRecord::Migration[6.1]
  def change
    remove_reference :products, :task, index: true, foreign_key: true
    add_reference :tasks, :products, index: true, foreign_key: true
  end
end
