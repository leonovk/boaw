# frozen_string_literal: true

module Xdotool
  # coordinate position parser from Xdotool
  class PositionParser # :nodoc: all
    def self.parse(position)
      hash_position = position.scan(/(\w+):(\d+)/).to_h

      {
        x: hash_position['x'].to_i,
        y: hash_position['y'].to_i
      }
    end
  end
end
