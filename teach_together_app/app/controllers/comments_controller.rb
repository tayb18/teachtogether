class CommentsController < ApplicationController
   
  def new
    if session[:user_id]
      @comment = Comment.new
      @user = User.find(session[:user_id])
      @forum = @comment.forum_id
    else
      redirect_to '/'
    end
  end

  def create
    @comment = Comment.create(comment_params)
    @user = User.find(session[:user_id])
    @forum = @comment.forum_id
    @comment.save()

    redirect_to '/forums/<%= @forum %>'
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :author, :forum_id)
    end

end 