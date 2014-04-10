class LinksController < ApplicationController
  def show
    @links= Link.all 
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new params[:link].permit(:url, :title)
    if @link.save
      flash[:notice] = 'Link Created'
      redirect_to @link
    else
      render 'new'
    end  
  end
end