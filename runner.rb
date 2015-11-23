# Load all the things in app
Dir[File.dirname(__FILE__) + '/app/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/*.rb'].each {|file| require file }

inks = InventoryService.new.fetch!

