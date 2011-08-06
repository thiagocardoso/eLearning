class Material < ActiveRecord::Base
  has_many :material_programas, :dependent => true
  has_many :programas, :through => :material_programas  
  
end
