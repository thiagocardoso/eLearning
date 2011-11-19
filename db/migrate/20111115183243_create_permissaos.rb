class CreatePermissaos < ActiveRecord::Migration
  def self.up
    create_table :permissaos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :permissaos
  end
end
