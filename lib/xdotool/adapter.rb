# frozen_string_literal: true

require_relative 'position_parser'

module Xdotool
  # Xdotool adapter for mouse control
  class Adapter
    def position
      output = IO.popen('xdotool getmouselocation', &:read)

      PositionParser.parse(output)
    end

    def left_click(position)
      Kernel.system("xdotool mousemove #{position[:x]} #{position[:y]} click 1")
    end

    def right_click(position)
      Kernel.system("xdotool mousemove #{position[:x]} #{position[:y]} click 3")
    end
  end
end
