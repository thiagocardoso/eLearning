class PerfilPermissao < ActiveRecord::Base
  belongs_to :perfil
  belongs_to :permissao
end
