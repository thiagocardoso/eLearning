class HomeController < ApplicationController
  
  def index
    # se nao tiver logado
    redirect_to :controller => :login, :action => :index unless usuario_logado
    
  end
  
end
