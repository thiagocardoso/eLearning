class CreatePerfils < ActiveRecord::Migration
  def self.up
    create_table :perfils do |t|
      t.string :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :perfils
  end
end
