class AvaliacaoQuestao < ActiveRecord::Base
  belongs_to :avaliacao
  belongs_to :questao
end
