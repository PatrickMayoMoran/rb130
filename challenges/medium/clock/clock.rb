class Clock
  MINUTES_IN_DAY = 1440

  attr_reader :time, :hours, :minutes

  def initialize(hours, minutes=0)
    @time = hours * 60 + minutes
    @hours = hours
    @minutes = minutes
  end

  def self.at(hours, minutes=0)
    Clock.new(hours, minutes)
  end

  def ==(other)
    time == other.time
  end

  def +(other)
    total = time + other
    total = total % MINUTES_IN_DAY
    hours, minutes = total.divmod(60)
    Clock.at(hours, minutes)
  end

  def -(other)
    total = time - other
    if total.negative?
      total = 1440 - total.abs
    end
    total = total % MINUTES_IN_DAY
    hours, minutes = total.divmod(60)
    Clock.at(hours, minutes)
  end

  def to_s
    sprintf('%02d:%02d', hours, minutes)
  end
end
