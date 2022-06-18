# Translator

Translate arbitrary text into the language of your choice.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'translator', github: 'rnzdoj/translator'
```

And then execute:

    $ bundle install

## Usage

- Create an initializer called, `translator.rb` and define this format
```ruby
Translator.configure do |config|
  config.authentication_key = ENV['RAPID_API_KEY']
  config.source_language = 'en'
  config.target_language = 'de'
end
```
- Kindly ensure that the secrets are passed from encrypted credentials and not hardcoded anywhere in your source.
- Once you have defined this, you can then use the the gem to translate arbitrary text this way.
```ruby
Translator::Text.translate('Hello World')
```

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
