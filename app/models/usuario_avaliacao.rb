class UsuarioAvaliacao < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :avaliacao
end
