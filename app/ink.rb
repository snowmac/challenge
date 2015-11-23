class Ink

  attr_accessor :color, :cost, :id

  def initialize(color, cost, id, volume = 0)
    @color = color
    @cost = cost
    @id = id
    @volume = volume
  end

  def rgb
    color = @color.match /#(..)(..)(..)/
    "#{color[1].hex},#{color[2].hex},#{color[3].hex}"
  end

end