class CommentsController < ApplicationController
   
 
  def create
    @forum = Forum.find(params[:forum_id])
    @comment = @forum.comments.create!(comment_params)

    redirect_to @forum
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :author, :forum_id)
    end

end 