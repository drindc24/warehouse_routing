require 'rails_helper'

RSpec.describe Reference, type: :model do
  describe '#relationships' do
    it { should belong_to(:destination) }
  end

  describe '#validations' do
    it { should validate_presence_of(:ref_code) }
  end
end
