class Appointments

  def initialize
    @appointments = []
  end

  def earliest
    nil if @appointments.empty?

    @appointments.min
  end

  def at(t)
    @appointments.append(t)
  end
end
