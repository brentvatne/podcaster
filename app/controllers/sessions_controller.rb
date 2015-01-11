class SessionsController < ApplicationController
  
  def create
    @user = User.find_by_email(params[:user_email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render json: {message: "Logged in"}
    else
      render json: {message: "No"}      
    end
  end

  def destroy
    session[:user_id] = nil
    render json: {message: "Logged out"}
  end
end
