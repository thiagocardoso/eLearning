class QuestaoAlternativas < ActiveRecord::Base
  belongs_to :questao_alternativas
  has_many :questao_alternativas
  
  belongs_to :questao
  
  
end
