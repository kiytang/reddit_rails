class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def create
   @comment = current_user.comments.create(post_params)
   redirect_to :back
  end

  private
  
  def post_params
    params.require(:comment).permit(:user_id, :link_id, :message)
  end

end