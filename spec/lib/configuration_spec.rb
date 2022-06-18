# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Translator::Configuration do
  let(:fake_described_class) { class_double(described_class) }

  it 'must be able to set authentication_key' do
    expect(fake_described_class).to receive(:authentication_key=).with('authentication_key')
    fake_described_class.authentication_key = 'authentication_key'
  end

  it 'must be able to set target_language' do
    expect(fake_described_class).to receive(:target_language=).with('target_language')
    fake_described_class.target_language = 'target_language'
  end

  it 'must be able to set source_language' do
    expect(fake_described_class).to receive(:source_language=).with('source_language')
    fake_described_class.source_language = 'source_language'
  end
end
