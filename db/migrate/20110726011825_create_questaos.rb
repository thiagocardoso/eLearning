class CreateQuestaos < ActiveRecord::Migration
  def self.up
    create_table :questaos do |t|
      t.string :nome
      t.text :descricao
      t.text :corpo

      t.timestamps
    end
  end

  def self.down
    drop_table :questaos
  end
end
