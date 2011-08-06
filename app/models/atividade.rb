class Atividade < ActiveRecord::Base
  has_many :avaliacaos
  belongs_to :programa
end
