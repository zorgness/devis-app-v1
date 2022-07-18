class RemoveFieldProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :price
    remove_column :products, :number_of_items
    remove_column :products, :m2
    add_column :tasks, :m2, :integer
    add_column :tasks, :number_of_items, :integer
  end
end
