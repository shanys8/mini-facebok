class CommentsController < ApplicationController
  def create
    @status = Status.find(params[:status_id])
    @comment = @status.comments.create(comment_params)
    redirect_to status_path(@status)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end