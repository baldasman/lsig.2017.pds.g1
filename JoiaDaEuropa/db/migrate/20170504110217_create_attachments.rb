class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.column :name, :string
      t.column :file, :string

      t.timestamps
    end
  end
end
