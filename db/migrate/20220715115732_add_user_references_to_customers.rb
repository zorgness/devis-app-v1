class AddUserReferencesToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_reference :customers, :user, foreign_key: true
  end
end
