require 'open-uri'
require 'zlib'
require 'yajl'

class Event < ActiveRecord::Base
  belongs_to :fetch
  belongs_to :report

  def parse_url(url)
    gz = open(url)
    js = Zlib::GzipReader.new(gz).read

    Yajl::Parser.parse(js) do |event|
      print event
    end
  end
end
