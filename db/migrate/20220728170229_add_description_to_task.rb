class AddDescriptionToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :description, :string
    remove_column :elements, :description
    remove_column :products, :description
  end
end
