class CreateActiveStorageAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :active_storage_attachments do |t|
      t.string :name
      t.string :record_type
      t.bigint :record_id
      t.bigint :blob_id

      t.timestamps
    end
    add_index :active_storage_attachments, :name
    add_index :active_storage_attachments, :record_id
    add_index :active_storage_attachments, :blob_id
  end
end
