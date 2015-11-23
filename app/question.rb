class Question

  attr_accessor :scenario_id, :question_inventory

  def initialize(scenario_id, layers)
    @scenario_id = scenario_id
    @layers = layers
    @question_inventory = Inventory.new()
    parse_colors
  end

  def parse_colors
    @layers.each do |layer|
      layer['layers'].each do |color|
        @question_inventory.add(color: color['color'], cost: nil, id: nil, volume: color['volume'])
      end
    end
  end

end