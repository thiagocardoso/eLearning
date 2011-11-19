class CreateMaterialDisciplinas < ActiveRecord::Migration
  def self.up
    create_table :material_disciplinas do |t|
      t.references :material
      t.references :disciplina
      t.timestamps
    end
  end

  def self.down
    drop_table :material_disciplinas
  end
end
