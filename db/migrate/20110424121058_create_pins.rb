class CreatePins < ActiveRecord::Migration
  def self.up
    create_table :pins do |t|
      t.text :desc
      t.float :lat
      t.float :lon
      t.float :accuracy

      t.timestamps
    end
  end

  def self.down
    drop_table :pins
  end
end
