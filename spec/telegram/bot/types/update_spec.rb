# frozen_string_literal: true

RSpec.describe Telegram::Bot::Types::Update do
  subject { instance }
  let(:instance) { described_class.new attrs }
  let(:attrs) do
    {
      update_id: '1',
      message: {},
      inline_query: {},
      chosen_inline_result: {},
    }
  end

  %w[
    message
    inline_query
    chosen_inline_result
  ].each do |field|
    field_class = Telegram::Bot::Types.const_get(Telegram::Bot::Types.camelize(field))
    its(field) { should be_instance_of field_class }
    its([field]) { should be_instance_of field_class }
  end
end
