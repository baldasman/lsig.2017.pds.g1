class AddAddressReference < ActiveRecord::Migration[5.0]
  def change
    add_reference :profiles, :address, index: true
  end
end
