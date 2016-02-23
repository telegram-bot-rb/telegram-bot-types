module Telegram
  module Bot
    module Types
      class UserProfilePhotos < Base
        attribute :total_count, Integer
        attribute :first_name, [[PhotoSize]]
      end
    end
  end
end
