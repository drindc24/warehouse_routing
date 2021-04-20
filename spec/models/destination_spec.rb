require 'rails_helper'

RSpec.describe Destination, type: :model do
  describe '#relationships' do
    it { should have_many(:references) }
    it { should have_many(:category_destinations) }
    it { should have_many(:categories) }
  end
end
