class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :zype_cli



  private

  def zype_cli
    @zype_cli ||= Zype::Client.new
  end

end
