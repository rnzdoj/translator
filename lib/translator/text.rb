# frozen_string_literal: true

require_relative 'google'

module Translator
  class Text
    attr_reader :text

    def initialize(text)
      @text = text.to_s
    end

    class << self
      def translate(text)
        new(text).translate
      end
    end

    def translate
      response = Google.call(text)

      case response.status
      when 200 then process_response(response.body)
      end
    end

    private

    def process_response(response)
      puts response.dig('data', 'translations', 0, 'translatedText')
    end
  end
end
