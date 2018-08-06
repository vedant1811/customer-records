require 'json_parser'

class Customer
  include JsonParser
  attr_accessor :user_id, :name, :latitude, :longitude
end
