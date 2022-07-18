class AddNameToElement < ActiveRecord::Migration[6.1]
  def change
    add_column :elements, :name, :string
  end
end
