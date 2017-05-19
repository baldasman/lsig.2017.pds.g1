class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.column :delivery_date, :date
      t.column :price, :integer
      t.column :status_id, :integer
      t.column :client_comment, :text
      t.column :attachment, :string
    end
  end
end
