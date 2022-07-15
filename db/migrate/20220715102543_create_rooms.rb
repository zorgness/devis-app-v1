class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.references :quotation, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
