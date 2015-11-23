class Inventory

  def initialize
    @collection = []
  end

  def add(item)
    @collection.push(Ink.new(item[:color],item[:cost],item[:id]))
  end

  def search_for_sub(ink)
    @collection.each do |item|
      c = Calculator.new(ink.color, item.color)
      return item if c.is_acceptable?
    end
  end

end