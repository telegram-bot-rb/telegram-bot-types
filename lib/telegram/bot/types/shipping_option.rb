# frozen_string_literal: true

module Telegram
  module Bot
    module Types
      class ShippingOption < Base
        attribute :id, String
        attribute :title, String
        attribute :prices, Array.of(LabeledPrice)
      end
    end
  end
end
