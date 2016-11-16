class AddAddressToEquipment < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment, :address, :string
  end
end
