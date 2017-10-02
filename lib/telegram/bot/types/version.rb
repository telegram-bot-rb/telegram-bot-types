module Telegram
  module Bot
    module Types
      VERSION = '0.5.0'.freeze

      def self.gem_version
        Gem::Version.new VERSION
      end
    end
  end
end
