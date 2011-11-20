class CreateQuestaos < ActiveRecord::Migration
  def self.up
    create_table :questaos do |t|
      t.string :titulo
      t.text :descricao
      t.integer :tipo
      t.references :questao_alternativa
      t.timestamps
    end
  end

  def self.down
    drop_table :questaos
  end
end
