# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class EncryptedPassportElement < Base
        attribute :type, String
        attribute :data, String
        attribute :phone_number, String
        attribute :email, String
        attribute :files, Array.of(PassportFile)
        attribute :front_side, PassportFile
        attribute :reverse_side, PassportFile
        attribute :selfie, PassportFile
        attribute :translation, Array.of(PassportFile)
        attribute :hash, String
      end
    end
  end
end
