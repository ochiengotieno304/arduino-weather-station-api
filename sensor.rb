require 'bundler/setup'
require 'dino'

board = Dino::Board.new(Dino::TxRx::Serial.new)
sensor = Dino::Components::Sensor.new(pin: '2', board: board)


def time_stamp
  t = Time.new
  puts t.localtime
end

sensor.when_data_received do |data|
  puts data
  time_stamp()
end

sleep
