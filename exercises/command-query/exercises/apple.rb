class Apple

  def initialize
    @ripe = false
    @weeks = 0
  end

  def ripe?
    if @weeks >= 3
      true
    else
      @ripe
    end
  end

  def wait_a_week
    @weeks += 1
  end
end
