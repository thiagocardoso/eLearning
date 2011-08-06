class CreateMaterialProgramas < ActiveRecord::Migration
  def self.up
    create_table :material_programas do |t|
      t.references :material
      t.references :programa
      t.timestamps
    end
  end

  def self.down
    drop_table :material_programas
  end
end
