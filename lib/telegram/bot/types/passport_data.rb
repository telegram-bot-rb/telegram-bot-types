module Telegram
  module Bot
    module Types
      class PassportData < Base
        attribute :data, [EncryptedPassportElement]
        attribute :credentials, EncryptedCredentials
      end
    end
  end
end
