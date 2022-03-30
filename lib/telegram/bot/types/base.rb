# frozen_string_literal: true

require 'dry/struct'

module Telegram
  module Bot
    module Types
      include Dry.Types()

      # Collection of default types. They are also available without
      # `Types::` prefix in nested classes in opposite to other built-in types.
      Boolean = self::Bool
      Integer = Coercible::Integer
      Float = Coercible::Float
      String = Coercible::String
      Array = self::Array

      class Base < Dry::Struct
        transform_keys(&:to_sym)

        class << self
          # Make all attributes optional.
          # Copied from #attribute?
          def attribute(name, *args, &block)
            super(:"#{name}?", build_type(name, *args, &block))
          end
        end

        # Access fields by string values for backward compatibility.
        # Don't raise errors when accessing missing attributes.
        # https://github.com/dry-rb/dry-struct/pull/177
        def [](name)
          name = name.to_sym
          super(name)
        rescue MissingAttributeError
          raise unless self.class.attribute_names.include?(name)
        end
      end
    end
  end
end
