class MainController < ApplicationController

  def index
    if params['type'] == 'youtube'
      @video = @zype_cli.videos.all({_type: "Video::Youtube"}).first
    else
      @video = @zype_cli.videos.all(_type: "Video::Zype").first
    end
      @embed = @zype_cli.videos.embed(@video._id, 'zype_player', {autoplay: true, width: 1000, height: 563})
  end




end
