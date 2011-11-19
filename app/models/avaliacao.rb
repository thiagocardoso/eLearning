class Avaliacao < ActiveRecord::Base
  belongs_to :atividade
  
  has_many :usuario_avaliacaos
  has_many :usuarios, :through => :usuario_avaliacaos
  
  has_many :avaliacao_questaos
  has_many :questaos, :through => :avaliacao_questaos    
end
