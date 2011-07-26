class Programa < ActiveRecord::Base
  has_many :atividades
  belongs_to :disciplina
end
