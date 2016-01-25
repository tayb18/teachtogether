class ForumsController < ApplicationController
  def show
    @forum = Forum.find(params[:id])
    @network = @forum.network_id
    @networkname = Network.find(@network)
    @comments = @forum.comments
    # @user = User.find(@forum.author)
    @comment = Comment.new
    @user = User.find(session[:user_id])
  end
   
  def new
    if session[:user_id]
      @forum = Forum.new
      @user = User.find(session[:user_id])
      @networkid = request.query_parameters
      @network = Network.find(@networkid['networkid'])
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