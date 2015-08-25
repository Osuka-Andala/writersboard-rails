class StoriesController < ApplicationController
  def index
  end

  def new
    @story  = Story.new
  end

  def create
    @story = Story.new
    if @story.save
      redirect_to root_path
    else
      render "new"
  end

end
