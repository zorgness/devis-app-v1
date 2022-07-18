class RemoveCategories < ActiveRecord::Migration[6.1]
  def change
    remove_reference :tasks, :category, index: true, foreign_key: true
    add_reference :tasks, :room, index: true, foreign_key: true
    drop_table :categories do |t|
      t.references :room, null: false, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
