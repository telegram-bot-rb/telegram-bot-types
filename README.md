# Telegram::Bot::Types

Virtus types for Telegram Bot API.

[![Gem Version](https://badge.fury.io/rb/telegram-bot-types.svg)](http://badge.fury.io/rb/telegram-bot-types)
[![Build Status](https://app.travis-ci.com/telegram-bot-rb/telegram-bot-types.svg)](https://app.travis-ci.com/github/telegram-bot-rb/telegram-bot-types)

## Installation

Add following line to your Gemfile:

```ruby
gem 'telegram-bot-types'
```

And then execute:

```shell
$ bundle
```

Or install it system-wide:

```shell
$ gem install telegram-bot-types
```

## Usage

```ruby
updates = bot.get_updates.map do |x|
  Telegram::Bot::Types::Update.new(x)
end
```

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
