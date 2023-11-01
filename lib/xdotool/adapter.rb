# frozen_string_literal: true

module Xdotool
  # Xdotool adapter for mouse control
  class Adapter
    def position
      system('xdotool getmouselocation>temp.txt')

      current_position = parse_position

      {
        x: current_position['x'].to_i,
        y: current_position['y'].to_i
      }
    end

    def left_click(position)
      system("xdotool mousemove #{position[:x]} #{position[:y]} click 1")
    end

    private

    def parse_position
      file = File.open('./temp.txt', 'r')
      position = file.gets.scan(/(\w+):(\d+)/).to_h
      file.close
      delete_temp_file
      position
    end

    def delete_temp_file
      File.delete('./temp.txt')
    end
  end
end
