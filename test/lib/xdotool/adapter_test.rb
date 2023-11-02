# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../test_helper'

module Xdotool
  class AdapterTest < Minitest::Test
    def setup
      @adapter = Adapter.new
      @position = { x: 100, y: 200 }
    end

    def test_left_click
      mock_kernel = Minitest::Mock.new
      mock_kernel.expect(:system, nil, ['xdotool mousemove 100 200 click 1'])

      Kernel.stub(:system, mock_kernel) do
        @adapter.left_click(@position)
        mock_kernel.verify
      end
    end

    def test_right_click
      mock_kernel = Minitest::Mock.new
      mock_kernel.expect(:system, nil, ['xdotool mousemove 100 200 click 3'])

      Kernel.stub(:system, mock_kernel) do
        @adapter.right_click(@position)
        mock_kernel.verify
      end
    end
  end
end
