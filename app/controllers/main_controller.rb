class MainController < ApplicationController
  before_filter :zype_cli




  def index
    if params['type'] == 'youtube'
      @video = @zype_cli.videos.all({_type: "Video::Youtube"}).first
    else
      @video = @zype_cli.videos.all({_type: "Video::Zype"}).first
    end
    @embed = @zype_cli.videos.embed(@video._id, {autoplay: true})
    binding.pry
  end


  private

  def zype_cli
    @zype_cli = Zype::Client.new
  end
end
