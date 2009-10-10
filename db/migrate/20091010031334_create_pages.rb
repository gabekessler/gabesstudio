class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.column :pagetext, :textarea
      t.column :header, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
