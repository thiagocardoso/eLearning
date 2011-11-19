class CreateMaterialAtividades < ActiveRecord::Migration
  def self.up
    create_table :material_atividades do |t|
      t.references :material
      t.references :atividade
      t.timestamps
    end
  end

  def self.down
    drop_table :material_atividades
  end
end
