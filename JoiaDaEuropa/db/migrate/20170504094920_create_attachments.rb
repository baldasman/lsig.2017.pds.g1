class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.string :name
      t.string :type
      t.string :size
      t.string :updated_at
      t.timestamps
    end
  end
end
