class VideosController < ApplicationController
  def index
    @videos = Video.all
  end
  
  def new
    @video = Video.new
  end
  
  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to videos_path
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @video.update(video_params)
      redirect_to videos_path
    else
      render 'edit' 
    end
  end
  
  def destroy
    @video.destroy
  end
  
  private
  
  def video_params
    params.require(:video).permit(:title,:length, :calories, :url)
  end
  
  
  
  
end
