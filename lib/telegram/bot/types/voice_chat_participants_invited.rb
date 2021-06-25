# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class VoiceChatParticipantsInvited < Base
        attribute :users, [User]
      end
    end
  end
end
