class Perfil < ActiveRecord::Base
  has_many :usuarios 
  
  has_many :perfil_permissaos
  has_many :permissaos, :through => :perfil_permissaos    
end
