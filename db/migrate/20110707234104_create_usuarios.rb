class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :nome
      t.string :login
      t.string :senha
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end
