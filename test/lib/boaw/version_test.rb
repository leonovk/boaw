# frozen_string_literal: true

require_relative '../../test_helper'

class VersionTest < Minitest::Test
  def test_version
    assert_equal '0.1.3', Boaw::VERSION
  end
end
