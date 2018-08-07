require 'json'

module JsonParser
  def initialize(json)
    hash = JSON.parse json
    hash.each do |key, value|
      public_send key + '=', int_float_or_string(value)
    end
  end

private
  def int_float_or_string(value)
    return value if value.is_a? Integer
    Float(value) rescue value
  end
end
