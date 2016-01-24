class ForumsController < ApplicationController
  def show
    @forum = Forum.find(params[:id])
    @network = @forum.network_id
    @comments = @forum.comments
    @user = User.find(@forum.author)
  end
 
  def new
    if session[:user_id]
      @forum = Forum.new
      @user = User.find(session[:user_id])
    else
      redirect_to '/'
    end
  end

  def create
    @forum = Forum.create(forum_params)
    @user = User.find(session[:user_id])
    @forum.save()

    redirect_to @forum
  end

  private
    def forum_params
      params.require(:forum).permit(:title, :body, :author, :network_id, :user_id)
    end


end