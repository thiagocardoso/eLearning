class Usuario < ActiveRecord::Base
  belongs_to :perfils
  
  has_many :usuario_avaliacaos
  has_many :avaliacaos, :through => :usuario_avaliacaos  
  
  has_many :usuario_programas
  has_many :programas, :through => :usuario_programas  
end
