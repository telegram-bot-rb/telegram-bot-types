# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class Game < Base
        attribute :title, String
        attribute :description, String
        attribute :photo, Array.of(PhotoSize)
        attribute :text, String
        attribute :text_entities, Array.of(MessageEntity)
        attribute :animation, Animation
      end
    end
  end
end
