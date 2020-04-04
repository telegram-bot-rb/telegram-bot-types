module Telegram
  module Bot
    module Types
      class Chat < Base
        attribute :id, Integer
        attribute :type, String
        attribute :title, String
        attribute :username, String
        attribute :first_name, String
        attribute :last_name, String
        attribute :all_members_are_administrators, Boolean
        attribute :photo, ChatPhoto
        attribute :description, String
        attribute :invite_link, String
        attribute :pinned_message, Message
        attribute :permissions, ChatPermissions
        attribute :slow_mode_delay, Integer
        attribute :sticker_set_name, String
        attribute :can_set_sticker_set, Boolean
      end
    end
  end
end
