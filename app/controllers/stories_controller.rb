class StoriesController < ApplicationController
  def create
    story = Story.new(params[:story])

    if story.save
      render json: story
    else
      render json: story, status: 422
    end
  end

  def update
    story = Story.find(params[:id])
    if story.update_attributes(params[:story])
      render json: story
    else
     render json: story, status: 422
    end
  end

  def index
    render json: Story.all
  end
end
