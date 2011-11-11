class CreateQuestaoAlternativas < ActiveRecord::Migration
  def self.up
    create_table :questao_alternativas do |t|
      t.integer :sequencia
      t.string :descricao
      t.references :questao_alternativas
      t.timestamps
    end
  end

  def self.down
    drop_table :questao_alternativas
  end
end
