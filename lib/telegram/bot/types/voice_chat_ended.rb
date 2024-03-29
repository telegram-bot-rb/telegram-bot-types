# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class VoiceChatEnded < Base
        attribute :duration, Integer
      end
    end
  end
end
