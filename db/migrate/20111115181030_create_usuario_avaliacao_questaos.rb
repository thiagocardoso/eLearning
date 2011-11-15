class CreateUsuarioAvaliacaoQuestaos < ActiveRecord::Migration
  def self.up
    create_table :usuario_avaliacao_questaos do |t|
      t.references :usuario
      t.references :avaliacao
      t.references :questao
      t.timestamps
    end
  end

  def self.down
    drop_table :usuario_avaliacao_questaos
  end
end
