class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    recordings << recording
  end

  def listen
    if block_given?
      recording = yield
      record(recording)
    end
  end

  def play
    puts recordings.last
  end

  private
  
  attr_reader :recordings
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"
