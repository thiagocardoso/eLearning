class UsuarioPrograma < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :programa
end
