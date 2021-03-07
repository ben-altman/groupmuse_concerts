require_relative "./groupmuse_concerts/version"
require_relative "./groupmuse_concerts/cli"
require_relative "./groupmuse_concerts/concert"
require_relative "./groupmuse_concerts/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module GroupmuseConcerts
  class Error < StandardError; end
  # Your code goes here...
end

#this might be renamed 'environment.rb'
