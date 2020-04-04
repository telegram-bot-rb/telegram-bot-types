# frozen_string_literal: true

RSpec.describe Telegram::Bot::Types::Response do
  it 'has WRAPPED_METHODS' do
    expect(described_class::WRAPPED_METHODS).to be_instance_of(Hash)
  end

  describe '.wrap' do
    subject { described_class.wrap(object, type) }
    let(:type) { Telegram::Bot::Types::File }
    let(:object) { {'file_id' => 'file_1'} }

    it { should be_instance_of(type) }
    its(:file_id) { should eq object['file_id'] }

    context 'when boolean is given' do
      let(:object) { true }
      it { should eq true }
    end

    context 'when type is array' do
      let(:type) { [super()] }
      let(:object) { [super(), {'file_id' => 'file_3'}] }
      it 'returns array of wrapped objects' do
        subject.each_with_index do |x, i|
          expect(x).to be_instance_of(type.first)
          expect(x.file_id).to eq object[i]['file_id']
        end
      end
    end
  end
end
