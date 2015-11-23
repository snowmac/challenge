require 'http_base.rb'

# Load all the things in app
Dir[File.dirname(__FILE__) + '/app/*.rb'].each {|file| require file }
