class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.string :category
      t.float :price
      t.string :instructions

      t.timestamps
    end
  end
end
