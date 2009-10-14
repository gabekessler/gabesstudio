class ChangeTypeInProject < ActiveRecord::Migration
  def self.up
    rename_column :projects, :type, :project_type
  end

  def self.down
    rename_column :projects, :project_type, :type
  end
end
