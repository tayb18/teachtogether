class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by({email: params[:email]}).try(:authenticate, params[:password])
    if @user 
        session[:user_id] = @user.id
        redirect_to @user
      else
        flash[:notice] = "Wrong Password. Try Again."
        redirect_to '/'
    end
  end

  def destroy
    if session[:user_id]
      session[:user_id] = nil
    end
    redirect_to '/'
  end

end