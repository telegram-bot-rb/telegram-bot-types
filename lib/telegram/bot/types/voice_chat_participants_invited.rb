# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class VoiceChatParticipantsInvited < Base
        attribute :users, Array.of(User)
      end
    end
  end
end
