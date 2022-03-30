# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'telegram/bot/types/version'

Gem::Specification.new do |spec|
  spec.name          = 'telegram-bot-types'
  spec.version       = Telegram::Bot::Types::VERSION
  spec.authors       = ['Alexander Tipugin', 'Max Melentiev']
  spec.email         = ['atipugin@gmail.com', 'melentievm@gmail.com']

  spec.summary       = 'Virtus types for Telegram Bot API'
  spec.homepage      = 'https://github.com/telegram-bot-rb/telegram-bot-types'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'dry-struct', '~> 1.0'

  spec.add_development_dependency 'bundler', '> 1.16'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'rspec-its', '~> 1.1'

  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rubocop', '~> 0.81.0'
end
