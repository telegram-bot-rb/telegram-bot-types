# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class ReplyKeyboardMarkup < Base
        attribute :keyboard, Array.of(Array.of(KeyboardButton))
        attribute :resize_keyboard, Boolean.default(false)
        attribute :one_time_keyboard, Boolean.default(false)
        attribute :selective, Boolean.default(false)
      end
    end
  end
end
