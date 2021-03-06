class Usuario < ActiveRecord::Base
  belongs_to :perfils
  
  has_many :usuario_avaliacaos
  has_many :avaliacaos, :through => :usuario_avaliacaos  
  
  has_many :usuario_programas
  has_many :programas, :through => :usuario_programas

  def login_valido?
    Usuario.exists?(:login => self.login, :senha => self.senha)
  end

  def carrega_usuario
     Usuario.find_all_by_login_and_senha(self.login, self.senha).first
  end

end
