$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'controller'

controller = Controller.new File.open('customers.txt')
controller.guest_list
