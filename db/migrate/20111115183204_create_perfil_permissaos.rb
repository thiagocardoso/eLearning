class CreatePerfilPermissaos < ActiveRecord::Migration
  def self.up
    create_table :perfil_permissaos do |t|
      t.references :perfil
      t.references :permissao
      t.timestamps
    end
  end

  def self.down
    drop_table :perfil_permissaos
  end
end
