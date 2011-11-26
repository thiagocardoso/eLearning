class Questao < ActiveRecord::Base
  has_many :avaliacao_questaos
  has_many :avaliacaos, :through => :avaliacao_questaos
  
  belongs_to :questao_alternativas
  has_many :questao_alternativas
end
