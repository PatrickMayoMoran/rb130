class Clock
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

  def to_s
    sprintf('%02d:%02d', hours, minutes)
  end
end
