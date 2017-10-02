# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class PassportData < Base
        attribute :data, Array.of(EncryptedPassportElement)
        attribute :credentials, EncryptedCredentials
      end
    end
  end
end
