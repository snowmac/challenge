require './http_base.rb'

class InventoryService < HttpBase

  def fetch!
    run(method: "#{@config['inks']['method']}", url: "#{@config['inks']['url']}")
  end

end