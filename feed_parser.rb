require 'rubygems'
require 'nokogiri'

class NewSource
  attr_reader :name, :root_url
  def initialize(name, root_url)
    @name = name
    @root_url = root_url
  end

end
