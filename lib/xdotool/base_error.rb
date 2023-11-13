# frozen_string_literal: true

module Xdotool
  # default error
  class BaseError < StandardError # :nodoc: all
    def message
      'failed to initialize xdotool module'
    end
  end
end
