class CreateMaterials < ActiveRecord::Migration
  def self.up
    create_table :materials do |t|
      t.string :titulo
      t.text :corpo

      t.timestamps
    end
  end

  def self.down
    drop_table :materials
  end
end
