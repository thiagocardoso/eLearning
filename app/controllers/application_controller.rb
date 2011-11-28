# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  before_filter :valida_usuario

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
 def usuario_logado
   session[:usuario] != nil && session[:usuario].login_valido?
 end

 def valida_usuario
   redirect_to :controller => :login unless usuario_logado
 end
  
end
