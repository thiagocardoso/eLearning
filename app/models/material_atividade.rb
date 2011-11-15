class MaterialAtividade < ActiveRecord::Base
  belongs_to :material
  belongs_to :atividade
end
