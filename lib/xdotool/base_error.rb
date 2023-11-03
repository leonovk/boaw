# frozen_string_literal: true

module Xdotool
  # default error
  class BaseError < StandardError
    def message
      'не удалось инициализировать модуль xdotool'
    end
  end
end
