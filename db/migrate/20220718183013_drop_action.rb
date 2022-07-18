class DropAction < ActiveRecord::Migration[6.1]
  def change
    drop_table :actions do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
