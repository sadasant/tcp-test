require 'simplehttp'

class Main < Device
  def self.call
    puts "TCP test!"
    puts "Press to start ..."
    getc
    puts "Connecting ..."
    response = TcpTest.perform
    puts "Response #{response}"
    puts "Press to exit"
    getc
    true
  end

  def self.foo
    :foo
  end

  def self.version
    "0.0.1"
  end
end

class TcpTest
  def self.perform
    socket = Device::Network.socket.call
    socket.write("TEST 1234567890\n")
    socket.read
  end
end

