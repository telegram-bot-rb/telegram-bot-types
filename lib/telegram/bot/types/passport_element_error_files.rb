# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class PassportElementErrorFiles < Base
        attribute :source, String.default('files')
        attribute :type, String
        attribute :file_hashes, Array.of(String)
        attribute :message, String
      end
    end
  end
end
