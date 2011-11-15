class Questao < ActiveRecord::Base
  has_many :avaliacao_questaos
  has_many :avaliacaos, :through => :avaliacao_questaos
end
