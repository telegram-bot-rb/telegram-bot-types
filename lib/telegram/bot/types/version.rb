# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      VERSION = '0.7.0'

      def self.gem_version
        Gem::Version.new VERSION
      end
    end
  end
end
