class UsuarioAvaliacaoQuestao < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :avaliacao
  belongs_to :questao
end
