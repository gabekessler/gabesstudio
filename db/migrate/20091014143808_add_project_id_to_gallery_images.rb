class AddProjectIdToGalleryImages < ActiveRecord::Migration
  def self.up
    add_column :projects, :project_id, :integer
  end

  def self.down
    remove_column :projects, :project_id
  end
end
