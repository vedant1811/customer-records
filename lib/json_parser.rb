require 'json'

module JsonParser
  def initialize(json)
    hash = JSON.parse json
    hash.each do |key, value|
      public_send key + '=', float_or_string(value)
    end
  end

private
  def float_or_string(value)
    Float(value) rescue value
  end
end
