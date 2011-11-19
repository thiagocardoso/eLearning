class CreateUsuarioProgramas < ActiveRecord::Migration
  def self.up
    create_table :usuario_programas do |t|
      t.references :usuario
      t.references :programa
      t.timestamps
    end
  end

  def self.down
    drop_table :usuario_programas
  end
end
