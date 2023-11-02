# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../test_helper'

class BoawTest < Minitest::Test
  def setup
    @mock_adapter = Minitest::Mock.new
    @boaw = Boaw.new
    @boaw.instance_variable_set(:@adapter, @mock_adapter)
    @position = { x: 1, y: 2 }
  end

  def test_position
    @mock_adapter.expect(:position, @position)

    assert_equal @position, @boaw.position

    @mock_adapter.verify
  end

  def test_left_click
    position = @position

    @mock_adapter.expect(:left_click, nil, [position])

    @boaw.left_click(position)

    @mock_adapter.verify
  end

  def test_right_click
    position = @position

    @mock_adapter.expect(:right_click, nil, [position])

    @boaw.right_click(position)

    @mock_adapter.verify
  end
end
