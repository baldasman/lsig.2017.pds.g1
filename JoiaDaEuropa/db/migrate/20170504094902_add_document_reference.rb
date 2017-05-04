class AddDocumentReference < ActiveRecord::Migration[5.0]
  def change
    add_reference :profiles, :document, index: true
  end
end
