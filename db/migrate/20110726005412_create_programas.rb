class CreateProgramas < ActiveRecord::Migration
  def self.up
    create_table :programas do |t|
      t.string :nome
      t.integer :carga_horaria
      t.integer :periodicidade
      t.integer :ano_implantacao
      t.string :ementa
      t.text :objetivos
      t.references :disciplina
      t.timestamps
    end
  end

  def self.down
    drop_table :programas
  end
end
