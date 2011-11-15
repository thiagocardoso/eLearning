class MaterialDisciplina < ActiveRecord::Base
  belongs_to :material
  belongs_to :disciplina
end
