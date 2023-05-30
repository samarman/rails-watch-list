class CreateActiveStorageBlobs < ActiveRecord::Migration[7.0]
  def change
    create_table :active_storage_blobs do |t|
      t.string :key
      t.string :filename
      t.string :content_type
      t.text :metadata
      t.string :service_name
      t.bigint :byte_size
      t.string :checksum

      t.timestamps
    end
    add_index :active_storage_blobs, :key
  end
end
