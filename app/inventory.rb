class Inventory

  def initialize
    @collection = []
  end

  def add(item)
    @collection.push(Ink.new(item[:color],item[:cost],item[:id]))
  end

  def search_for_sub(ink)
    raise 'need to implement this feature'
  end

end