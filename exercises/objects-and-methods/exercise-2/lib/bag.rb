class Bag

  attr_accessor :bag
  def initialize(bag = {})
    @bag = {}
  end

  def new
    super
    {}
  end

  def candies
    []
  end


end
