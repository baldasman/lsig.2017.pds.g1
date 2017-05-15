class AddProfileReference < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :profile, index: true
    add_reference :users, :profile, index: true
  end
end
