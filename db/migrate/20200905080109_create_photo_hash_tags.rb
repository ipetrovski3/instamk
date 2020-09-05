class CreatePhotoHashTags < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_hash_tags do |t|
      t.belongs_to :photo, index: true
      t.belongs_to :hash_tag, index: true

      t.timestamps
    end
  end
end
