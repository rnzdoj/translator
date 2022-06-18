# frozen_string_literal: true

module Translator
  module Configuration
    class << self
      attr_accessor :authentication_key, :source_language, :target_language
    end
  end
end
