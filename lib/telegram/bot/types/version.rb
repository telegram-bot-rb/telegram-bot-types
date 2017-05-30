module Telegram
  module Bot
    module Types
      VERSION = '0.4.1'.freeze

      def self.gem_version
        Gem::Version.new VERSION
      end
    end
  end
end
