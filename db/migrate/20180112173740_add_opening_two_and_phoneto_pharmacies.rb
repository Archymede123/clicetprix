class AddOpeningTwoAndPhonetoPharmacies < ActiveRecord::Migration[5.1]
  def change
    add_column :pharmacies, :opening_times_second, :string
    add_column :pharmacies, :opening_times_third, :string
    add_column :pharmacies, :phone_number, :string
  end
end
