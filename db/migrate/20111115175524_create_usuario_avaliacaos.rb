class CreateUsuarioAvaliacaos < ActiveRecord::Migration
  def self.up
    create_table :usuario_avaliacaos do |t|
      t.references :usuario
      t.references :avaliacao
      t.timestamps
    end
  end

  def self.down
    drop_table :usuario_avaliacaos
  end
end
