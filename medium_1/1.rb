class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording.call
  end
  
  def listen(&recording)
    record(recording) if block_given?
  end
  
  def play
    puts @recordings.last
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"