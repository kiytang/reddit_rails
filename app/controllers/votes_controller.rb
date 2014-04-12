class VotesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @vote = Vote.where(:link_id => params[:vote][:link_id], :user_id => current_user.id).first
    if @vote
      @vote.up = params[:vote][:up]
      @vote.save
    else
      @vote = current_user.votes.create(post_params)
    end
    redirect_to :back
  end

  private
  
  def post_params
    params.require(:vote).permit(:user_id, :link_id, :up  )
  end

end