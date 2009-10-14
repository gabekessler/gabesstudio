class CreateGalleryImages < ActiveRecord::Migration
  def self.up
    create_table :gallery_images do |t|
      t.string :title, :limit => 100
      t.text :caption, :limit => 200
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :gallery_images
  end
end
