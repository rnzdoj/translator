# frozen_string_literal: true

require 'faraday'

module Translator
  class Google
    attr_accessor :params

    class << self
      def call(text)
        new.call(text)
      end
    end

    def call(text)
      raise 'Authentication key is not set' if Translator::Configuration.authentication_key.nil?
      raise 'Target language is not set' if Translator::Configuration.target_language.nil?
      raise 'Empty text' if text.empty?

      src = Translator::Configuration.source_language
      dst = Translator::Configuration.target_language

      client.post('/language/translate/v2') do |req|
        req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        req.headers['Accept-Encoding'] = 'gzip'
        req.headers['X-RapidAPI-Key'] = Translator::Configuration.authentication_key
        req.headers['X-RapidAPI-Host'] = 'google-translate1.p.rapidapi.com'
        req.body = "q=#{text}&target=#{dst}&source=#{src}"
      end
    end

    private

    def client
      Faraday.new('https://google-translate1.p.rapidapi.com') do |conn|
        conn.adapter :net_http
        conn.request :json, content_type: 'application/json'
        conn.request :url_encoded
        conn.response :json, content_type: /\bjson$/
      end
    end
  end
end
