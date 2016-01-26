class UsersController < ApplicationController

  def show
    if session[:user_id]
      @user = User.find(params[:id])
      @networks = @user.networks.all
      @all_networks = Network.all

    else
      redirect_to '/'
    end
  end

  def new 
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      
      redirect_to @user
    elsif @user.password.length < 7
      flash[:notice] = "Sorry! Passwords must be at least 6 characters. Try again!"
      redirect_to '/'
    elsif @user.password != @user.password_confirmation
      flash[:notice] = "Passwords do not match. Please try again!"
      redirect_to '/'
    else
      flash[:notice] = "This email has already been registered. Please try logging in or use a new email address!"
      redirect_to '/'
    end
  end

  private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end