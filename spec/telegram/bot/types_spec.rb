RSpec.describe Telegram::Bot::Types do
  it 'has a version number' do
    expect(described_class::VERSION).not_to be nil
  end

  it 'has all constants loadadble' do
    described_class.constants.each do |name|
      described_class.const_get(name)
    end
  end
end
