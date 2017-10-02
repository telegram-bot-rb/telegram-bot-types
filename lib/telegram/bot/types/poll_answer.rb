# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class PollAnswer < Base
        attribute :poll_id, String
        attribute :user, User
        attribute :option_ids, Array.of(Integer)
      end
    end
  end
end
