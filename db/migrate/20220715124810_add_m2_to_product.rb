class AddM2ToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :m2, :integer
  end
end
