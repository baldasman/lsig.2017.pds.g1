class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.column :delivery_date, :date
      t.column :order_date, :date
      t.column :price, :integer
      t.column :status, :string
      t.column :client_comment, :text
      t.column :adm_comment, :text
      t.timestamps
    end
  end
end
