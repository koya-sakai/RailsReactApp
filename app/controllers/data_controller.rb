class DataController < ApplicationController
  def index
  end

  def ajax
    url = 'https://news.yahoo.co.jp/pickup/rss.xml'
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    render plain:Hash::from_xml(response.body).to_json
  end
end
