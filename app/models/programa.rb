class Programa < ActiveRecord::Base
  has_many :atividades
  belongs_to :disciplina
  
  has_many :material_programas, :dependent => true
  has_many :materials, :through => :material_programas
end
