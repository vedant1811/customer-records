require 'models/customer'

class FileInputParser
  def initialize(file)
    @file = file
  end

  # @return Customer array
  def parse
    @file.each_line.map do |line|
      Customer.new line
    end
  end
end
