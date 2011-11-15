class Atividade < ActiveRecord::Base
  has_many :avaliacaos
  belongs_to :programa
  
  has_many :material_atividades
  has_many :materials, :through => :material_atividades    
end
