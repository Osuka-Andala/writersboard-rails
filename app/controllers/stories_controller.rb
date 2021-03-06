class StoriesController < ApplicationController
  def index
    @stories = Story.page(params[:page]).per(25)
  end

  def new
    @story  = Story.new
  end

  def create
    @story = Story.new(params.require(:story).permit(:title, :writer, :preview, :url))
    if @story.save
      redirect_to root_path
    else
      render "new"
  end
end

end
