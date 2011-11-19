class Programa < ActiveRecord::Base
  has_many :atividades
  belongs_to :disciplina
  
  has_many :material_programas
  has_many :materials, :through => :material_programas
  
  has_many :usuario_programas
  has_many :usuarios, :through => :usuario_programas  
end
