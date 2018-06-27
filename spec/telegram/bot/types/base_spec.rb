RSpec.describe Telegram::Bot::Types::Base do
  let(:klass) do
    Class.new(described_class) do
      attribute :text, String
      attribute :number, Numeric
    end
  end

  describe '#to_hash' do
    subject { ->(attrs) { klass.new(attrs).to_hash } }
    it 'strips empty values' do
      expect(subject[{}]).to eq({})
      expect(subject[text: 'test']).to eq(text: 'test')
      expect(subject[number: 1]).to eq(number: 1)
      expect(subject[text: 'test', number: 1]).to eq(text: 'test', number: 1)
    end
  end
end
