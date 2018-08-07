require 'models/location'
require 'json_parser'

class Customer < Location
  include JsonParser
  attr_accessor :user_id, :name
end
