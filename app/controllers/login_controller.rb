class LoginController < ApplicationController
  
  skip_before_filter :valida_usuario, :only => [:index, :login]

  def index
    @login = Usuario.new
  end

  def login
    usuario = Usuario.new(params[:usuario])
    if usuario.login_valido?
      session[:usuario] = usuario.carrega_usuario
      redirect_to :controller => :home
    else
      session[:usuario] = nil
      flash[:error] = "Usuário ou senha inválido"
      redirect_to :action => :index
    end
  end

end
