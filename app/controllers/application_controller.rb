class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in?
    session[:logged_in] == true
  end

  def require_authentication
    flash[:error] = "You need to login first!"
    redirect_to new_session_path unless logged_in?
  end
end
