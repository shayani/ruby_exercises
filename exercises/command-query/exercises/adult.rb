class Adult


  def initialize
    @sober = true
    @quantity = 0
  end

  def consume_an_alcoholic_beverage
    @quantity += 1
  end

  def sober?
    if @quantity > 2
      false
    else
      true
    end
  end
end
