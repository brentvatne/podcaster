class SessionsController < ApplicationController

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user.present? && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      render json: {success: true}
    else
      render json: {error: "Invalid email or password"}
    end
  end

  def destroy
    session[:user_id] = nil
    render json: {success: true}
  end

end
