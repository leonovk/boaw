# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../test_helper'

class VersionTest < Minitest::Test
  def test_version
    assert_equal '0.1.2', Boaw::VERSION
  end
end
