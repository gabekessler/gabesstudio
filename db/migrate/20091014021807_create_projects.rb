class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :site_link
      t.string :title, :limit => 100
      t.text :description, :limit => 1500
      t.datetime :completion_date
      t.string :project_type, :limit => 100

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
