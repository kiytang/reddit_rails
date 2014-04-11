class VotesController < ApplicationController
  before_filter :authenticate_user!

  def create
   @vote = current_user.votes.create(post_params)
   redirect_to :back
  end

  private
  
  def post_params
    params.require(:vote).permit(:user_id, :link_id, :up)
  end

end