class Clock
  attr_reader :time

  def initialize(hours, minutes=0)
    @time = hours * 60 + minutes
  end

  def ==(other)
    time == other.time
  end
end
