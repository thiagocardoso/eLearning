class Disciplina < ActiveRecord::Base
  has_many :programas
  
  has_many :material_disciplinas
  has_many :materials, :through => :material_disciplinas  
end
