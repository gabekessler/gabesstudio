class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :title, :limit => 100
      t.string :link
      t.string :type, :limit => 100
      t.text :text, :limit => 1500
      t.datetime :completion_date

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
