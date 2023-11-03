# frozen_string_literal: true

module Xdotool
  # default error
  class BaseError < StandardError
    def message
      'failed to initialize xdotool module'
    end
  end
end
