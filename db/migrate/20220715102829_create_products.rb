class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :number_of_items
      t.integer :price
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
