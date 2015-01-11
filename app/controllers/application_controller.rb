class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user 
    return @current_user if @current_user.present?

    if id = session[:user_id]
      @current_user = User.find(id)
    end
  end

  def logged_in?
    current_user.present?
  end

  def require_authentication
    unless logged_in?
      render nothing: true, status: :unauthorized
    end
  end
end
