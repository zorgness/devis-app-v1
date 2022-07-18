class AddReferencesActivityToTask < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :activity, index: true, foreign_key: true
  end
end
