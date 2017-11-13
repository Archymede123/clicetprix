class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :image
      t.string :content
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
