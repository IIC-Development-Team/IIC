class HomeController < ApplicationController
  def index
    ua = request.user_agent

    client = DeviceDetector.new(ua)

    Usr.create(:browser => client.name, :os => client.os_name, :dev_type => client.device_type)
  end

  def clients
    @usrs = Usr.all
  end

  def about
  end

  def donate
  end
end
