# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class PassportElementErrorTranslationFiles < Base
        attribute :source, String.default('translation_files')
        attribute :type, String
        attribute :file_hashes, Array.of(String)
        attribute :message, String
      end
    end
  end
end
