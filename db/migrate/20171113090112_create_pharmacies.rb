class CreatePharmacies < ActiveRecord::Migration[5.1]
  def change
    create_table :pharmacies do |t|
      t.string :name
      t.string :opening_times
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
