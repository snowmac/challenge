class Ink

  def initialize(hex, cost, id)
    @hex = hex
    @cost = cost
    @id = id
  end

  def rgb
    color = @hex.match /#(..)(..)(..)/
    "#{color[1].hex},#{color[2].hex},#{color[3].hex}"
  end

end