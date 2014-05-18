class MainController < ApplicationController
  before_filter :zype_cli




  def index

    @video = @zype_cli.videos.last

  end


  private

  def zype_cli
    @zype_cli = Zype::Client.new
  end
end
