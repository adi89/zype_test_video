class MainController < ApplicationController
  before_filter :zype_cli




  def index

    @video = @zype_cli.videos.first

    if @video
      @embed = @zype_cli.videos.embed(@video._id)
    end
  end


  private

  def zype_cli
    @zype_cli = Zype::Client.new
  end
end
