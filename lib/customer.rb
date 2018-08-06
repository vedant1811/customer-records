require 'json_parser.rb'

class Customer
  include JsonParser
  attr_accessor :user_id, :name, :latitude, :longitude
end
