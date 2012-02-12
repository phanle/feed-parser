require 'rubygems'
require 'nokogiri'

class FeedParser
  attr_reader :file
  def initialize(file)
    @file = file
  end

  def parse
    f = File.open(file)
    doc = Nokogiri::XML(f)
    f.close
    root = doc.css('channel')
    return NewSource.new(root.css("title").first.text, root.css("link").first.text)
  end

end

class NewSource
  attr_reader :name, :root_url
  def initialize(name, root_url)
    @name = name
    @root_url = root_url
  end
end
