class Permissao < ActiveRecord::Base
  has_many :perfil_permissaos
  has_many :perfils, :through => :perfil_permissaos     
end
