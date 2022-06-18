# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Translator do
  it 'must be able to provide configuration options' do
    described_class.config do |config|
      expect(config).to eq(Translator::Configuration)
    end
  end
end
