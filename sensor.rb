require 'bundler/setup'
require 'dino'

board = Dino::Board.new(Dino::TxRx::Serial.new)
sensor = Dino::Components::Sensor.new(pin: '2', board: board)

sensor.when_data_received do |data, data1|
  puts data
end

sleep
