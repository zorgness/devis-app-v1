class AddReferencesUserToActionElementProduct < ActiveRecord::Migration[6.1]
  def change
    add_reference :activities, :user, index: true, foreign_key: true
    add_reference :elements, :user, index: true, foreign_key: true
    add_reference :products, :user, index: true, foreign_key: true
  end
end
