# frozen_string_literal: true

require 'virtus'

module Telegram
  module Bot
    module Types
      class Base
        include Virtus.model

        def to_hash(*)
          super.reject { |_k, v| v.nil? }
        end
      end
    end
  end
end
