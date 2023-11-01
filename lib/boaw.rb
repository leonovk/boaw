# frozen_string_literal: true

require_relative 'xdotool/adapter'

# Main class
class Boaw
  attr_reader :adapter

  def initialize
    @adapter = Xdotool::Adapter.new
  end

  def position
    adapter.position
  end

  def left_click(position)
    adapter.left_click(position)
  end
end
