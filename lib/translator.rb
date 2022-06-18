# frozen_string_literal: true

require_relative 'translator/configuration'
require_relative 'translator/text'

module Translator
  class << self
    def config
      yield Translator::Configuration
    end
  end
end
