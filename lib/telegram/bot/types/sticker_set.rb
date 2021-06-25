# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class StickerSet < Base
        attribute :name, String
        attribute :title, String
        attribute :is_animated, Boolean
        attribute :contains_masks, Boolean
        attribute :stickers, [Sticker]
        attribute :thumb, PhotoSize
      end
    end
  end
end
