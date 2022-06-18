# frozen_string_literal: true

require_relative 'lib/translator'

Translator.config do |config|
  config.authentication_key = '882ab41ef9msh376aa51ac63d560p10d8e1jsn9fe973c23311'
  config.source_language = 'en'
  config.target_language = 'de'
end

Translator::Text.translate('Hello World')
