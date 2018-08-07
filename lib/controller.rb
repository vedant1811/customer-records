require 'models/location'
require 'file_input_parser'
require 'guests_calculator'

class Controller
  def initialize(input_file)
    @input_file = input_file
  end

  def guest_list
    origin = Location.new
    # Use Dublin as default
    origin.latitude = 53.339428
    origin.longitude = -6.257664

    customers = FileInputParser.new(@input_file)
                  .parse
    guests = GuestsCalculator.new(origin)
                .filter_and_sort(customers)
    puts "------Guests list------"
    guests.each do |customer|
      puts customer
    end
  end
end
