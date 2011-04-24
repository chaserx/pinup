class AddNameToPins < ActiveRecord::Migration
  def self.up
    add_column :pins, :name, :string
  end

  def self.down
    remove_column :pins, :name
  end
end
