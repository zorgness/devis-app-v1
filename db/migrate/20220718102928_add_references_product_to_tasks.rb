class AddReferencesProductToTasks < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :product, index: true, foreign_key: true
  end
end
