# frozen_string_literal: true

require_relative 'xdotool/adapter'

# The main class from which work with the program begins
class Boaw
  def initialize
    @adapter = Xdotool::Adapter.new
  end

  # method returns the current cursor position
  # { :x => 1, :y =>2 }
  def position
    adapter.position
  end

  # clicks with the left mouse button,
  # takes the position coordinates as input
  def left_click(position)
    adapter.left_click(position)
  end

  # clicks with the right mouse button,
  # takes the position coordinates as input
  def right_click(position)
    adapter.right_click(position)
  end

  private

  attr_reader :adapter
end
