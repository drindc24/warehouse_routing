require 'rails_helper'

RSpec.describe CategoryDestination, type: :model do
  describe '#relationships' do
    it { should belong_to(:category) }
    it { should belong_to(:destination) }
  end
end
