# frozen_string_literal: true

require 'pathname'

module Telegram
  module Bot
    module Types
      module_function

      # Simple implementation for internal use only.
      # rubocop:disable all
      def camelize(str)
        str.gsub(/(?:_|(\/)|^)([a-z\d]*)/i) { "#{$1}#{$2.capitalize}" }
      end
      # rubocop:enable all

      files = Pathname(__FILE__).dirname.join('types').children.map { |x| x.basename.to_s }
      types = files.select { |x| x.end_with?('.rb') }.map { |x| x.gsub(/\.rb$/, '') }
      types -= ['version']
      types.each do |type|
        autoload camelize(type), "telegram/bot/types/#{type}"
      end
    end
  end
end

require 'telegram/bot/types/version'
