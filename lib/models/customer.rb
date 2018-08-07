require 'models/location'
require 'json_parser'

class Customer < Location
  include JsonParser, Comparable
  attr_accessor :user_id, :name

  def <=>(other)
    user_id <=> other.user_id
  end

  def to_s
    "%-30s #%02d" % [name, user_id]
  end
end
