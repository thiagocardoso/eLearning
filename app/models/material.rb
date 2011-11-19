class Material < ActiveRecord::Base
  has_many :material_programas
  has_many :programas, :through => :material_programas
  
  has_many :material_disciplinas
  has_many :disciplinas, :through => :material_disciplinas
  
  has_many :material_atividades
  has_many :atividades, :through => :material_atividades  
end
