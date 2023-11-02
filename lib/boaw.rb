# frozen_string_literal: true

require_relative 'xdotool/adapter'

# The main class from which work with the program begins
class Boaw
  def initialize
    @adapter = Xdotool::Adapter.new
  end

  def position
    adapter.position
  end

  def left_click(position)
    adapter.left_click(position)
  end

  def right_click(position)
    adapter.right_click(position)
  end

  private

  attr_reader :adapter
end
