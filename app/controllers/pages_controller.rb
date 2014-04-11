class PagesController < ApplicationController
  def index
   @links = Link.paginate(:page => params[:page] || 1, :per_page => params[:per_page] || 25) 
  end
end
