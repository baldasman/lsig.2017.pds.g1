class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.column :name, :string, :limit => 32, :null => false
      t.column :account_type, :integer, :null => false
      t.column :gender, :integer
      t.column :birth, :date
      t.column :telephone, :string
      t.column :nickname, :string
      t.timestamps
    end
  end
end
