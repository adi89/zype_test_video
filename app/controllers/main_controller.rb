class MainController < ApplicationController
  before_filter :zype_cli




  def index
    if params['type'] == 'youtube'
      binding.pry
      @video = @zype_cli.videos.all({_type: "Video::Youtube"}).first
    else
      @video = @zype_cli.videos.all({_type: "Video::Zype"}).first
    end

    if @video
      @embed = @zype_cli.videos.embed(@video._id, {autoplay: true})
    end
  end


  private

  def zype_cli
    @zype_cli = Zype::Client.new
  end
end
