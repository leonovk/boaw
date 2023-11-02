# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../test_helper'

module Xdotool
  class PositionParserTest < Minitest::Test
    def setup
      @position = 'x:761 y:1051 screen:0 window:20971523'
      @expect_result = { x: 761, y: 1051 }
    end

    def test_parser
      assert_equal @expect_result, PositionParser.parse(@position)
    end
  end
end
