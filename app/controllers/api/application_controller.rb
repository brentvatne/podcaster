class Api::ApplicationController < ActionController::Base

  # Add this back later!
  #
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def logged_in?
    session[:logged_in] == true
  end

  def require_authentication
    unless logged_in?
      redirect_to new_session_path
    end
  end
end
