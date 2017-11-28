class AddAddressToPharmacies < ActiveRecord::Migration[5.1]
  def change
    add_column :pharmacies, :street, :string
    add_column :pharmacies, :zip_code, :string
    add_column :pharmacies, :city, :string
  end
end
