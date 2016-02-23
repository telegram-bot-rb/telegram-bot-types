lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'telegram/bot/types/version'

Gem::Specification.new do |spec|
  spec.name          = 'telegram-bot-types'
  spec.version       = Telegram::Bot::Types::VERSION
  spec.authors       = ['Alexander Tipugin', 'Max Melentiev']
  spec.email         = ['atipugin@gmail.com', 'melentievm@gmail.com']

  spec.summary       = 'Virtus types for Telegram Bot API'
  spec.homepage      = 'https://github.com/telegram-bot-rb/telegram-bot-types'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'virtus', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'rspec-its', '~> 1.1'
  spec.add_development_dependency 'activesupport', '~> 4.0'

  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rubocop', '~> 0.37.0'
end
