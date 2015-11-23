class Question

  def initialize(scenario_id, layers)
    @scenario_id = scenario_id
    @layers = layers
    @question_inventory = Inventory.new()
  end

  def parse_colors
    @layers.each do |layer|
      @question_inventory.add(color: layer['color'], cost: nil, id: nil, volume: layer['volume'])
    end
  end

end