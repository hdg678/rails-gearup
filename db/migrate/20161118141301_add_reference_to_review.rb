class AddReferenceToReview < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :equipment, index: true
  end
end
