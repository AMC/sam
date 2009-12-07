# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Authentication
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  helper_method :current_user
  
  before_filter { |c| Authorization.current_user = c.current_user }
  
  protected
  
  def permission_denied
    flash[:error] = "please log in"
    redirect_to login_url
  end
  

  
end
