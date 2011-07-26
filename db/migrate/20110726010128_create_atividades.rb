class CreateAtividades < ActiveRecord::Migration
  def self.up
    create_table :atividades do |t|
      t.string :titulo
      t.text :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :atividades
  end
end
