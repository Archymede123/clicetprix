class DropAddresses < ActiveRecord::Migration[5.1]
  def up
    drop_table :addresses
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
