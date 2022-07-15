class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.references :room, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
