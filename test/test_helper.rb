# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require 'byebug'
require_relative '../lib/boaw'
require_relative '../lib/boaw/version'
require_relative '../lib/xdotool/position_parser'
require_relative '../lib/xdotool/adapter'

Minitest::Reporters.use!
