class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :pharmacy
      t.string :email
      t.string :phone
      t.string :message

      t.timestamps
    end
  end
end
