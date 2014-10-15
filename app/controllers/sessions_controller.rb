class SessionsController < ApplicationController
  def new
    redirect_to home_path if logged_in?
  end

  def create
    if params[:password] == ENV['SECURE_PASSWORD']
      session[:logged_in] = true
      redirect_to home_path
    else
      session[:logged_in] = false
      flash.now[:error] = 'Incorrect password'
      render action: :new
    end
  end

  def destroy
    session[:logged_in] = false
    flash.now[:success] = 'Logged out!'
    render action: :new
  end
end
