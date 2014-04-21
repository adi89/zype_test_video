class MainController < ApplicationController

  def index
    if params['type'] == 'youtube'
      @video = @zype_cli.videos.all({title: "XX at Terminal 5- intro and tides"}).first
    else
      @video = @zype_cli.videos.all(title: "ZEXAL_010J").first
    end
      @embed = @zype_cli.videos.embed(@video._id, 'zype_player', {autoplay: true, width: 1000, height: 563})
  end




end
