# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../test_helper'

module Xdotool
  class AdapterTest < Minitest::Test
    def setup
      @position = { x: 1, y: 2 }
      @adapter = Adapter.new
    end

    def test_left_click
      mock_kernel = Minitest::Mock.new
      mock_kernel.expect(:system, nil, ['xdotool mousemove 1 2 click 1'])

      Kernel.stub :system, ->(position) { mock_kernel.system(position) } do
        @adapter.left_click(@position)
      end

      mock_kernel.verify
    end

    def test_right_click
      mock_kernel = Minitest::Mock.new
      mock_kernel.expect(:system, nil, ['xdotool mousemove 1 2 click 3'])

      Kernel.stub :system, ->(position) { mock_kernel.system(position) } do
        @adapter.right_click(@position)
      end

      mock_kernel.verify
    end
  end
end
