require 'csv'

class HomeController < ApplicationController
  def index
    ua = request.user_agent

    client = DeviceDetector.new(ua)

    Usr.create(:browser => client.name, :os => client.os_name, :dev_type => client.device_type)

    @applications = Application.all

    @usrs = Usr.all
  end

  def export
    @data = Application.all
    headers = ['id', 'title', 'author', 'rd', 'ca', 'cs', 'img', 'created_at', 'updated_at', 'size', 'app_type']
    csv_data = CSV.generate(headers: true) do |csv|
      csv << headers
      @data.each do |row|
        csv << [row.id, row.title, row.author, row.rd, row.ca, row.cs, row.img, row.created_at, row.updated_at, row.size, row.app_type]
      end
    end

    send_data csv_data, filename: "apps.csv"
  end

  def clients
    @usrs = Usr.all
  end

  def about
  end

  def donate
  end
end
