class AddDescriptionToElements < ActiveRecord::Migration[6.1]
  def change
    add_column :elements, :description, :string
  end
end
