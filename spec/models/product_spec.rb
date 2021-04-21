require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '#relationships' do
    it { should belong_to(:category) }
    it { should belong_to(:destination).optional(true) }
    it { should belong_to(:reference) }
  end
end
