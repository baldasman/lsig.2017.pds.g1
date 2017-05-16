class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.column :country, :string
      t.column :zip_code, :string
      t.column :street, :string
      t.column :number_add, :string
      t.timestamps
    end
  end
end
