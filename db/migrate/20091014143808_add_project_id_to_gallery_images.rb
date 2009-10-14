class AddProjectIdToGalleryImages < ActiveRecord::Migration
  def self.up
    add_column :gallery_images, :project_id, :integer
  end

  def self.down
    remove_column :gallery_images, :project_id
  end
end
