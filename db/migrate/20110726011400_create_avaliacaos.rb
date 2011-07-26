class CreateAvaliacaos < ActiveRecord::Migration
  def self.up
    create_table :avaliacaos do |t|
      t.string :titulo
      t.text :descricao
      t.integer :status
      t.references :atividade
      t.timestamps
    end
  end

  def self.down
    drop_table :avaliacaos
  end
end
