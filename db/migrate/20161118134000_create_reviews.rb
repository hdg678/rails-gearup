class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :number
      t.string :comment

      t.timestamps
    end
  end
end
