class AddNumberToQuotations < ActiveRecord::Migration[6.1]
  def change
    add_column :quotations, :number, :integer
    remove_column :quotations, :title
  end
end
