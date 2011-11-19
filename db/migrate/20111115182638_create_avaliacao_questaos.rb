class CreateAvaliacaoQuestaos < ActiveRecord::Migration
  def self.up
    create_table :avaliacao_questaos do |t|
      t.references :avaliacao
      t.references :questao
      t.timestamps
    end
  end

  def self.down
    drop_table :avaliacao_questaos
  end
end
