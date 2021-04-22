require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '#relationships' do
    it { should belong_to(:category) }
    it { should belong_to(:destination).optional(true) }
    it { should belong_to(:reference) }
  end

  describe '#assign_destination' do
    let(:destination_1){ create(:destination) }
    let(:destination_2){ create(:destination) }

    context 'reference' do
      let(:category_1){ create(:category) }
      let(:category_2){ create(:category) }
      let(:reference_1){ create(:reference, destination: destination_1) }
      let(:reference_2){ create(:reference, destination: destination_1) }

      let(:product){ build(:product, category: category_1, reference: reference_1) }

      before do
        destination_1.categories << category_1
        destination_1.categories << category_2
        destination_2.categories << category_1
        destination_2.categories << category_2
        product.save
        product.reload
      end

      it 'sets a destination via reference' do
        expect(product.destination).to eq destination_1
      end
    end

    context 'category' do
      let(:category_1){ create(:category) }
      let(:category_2){ create(:category) }
      let(:reference){ create(:reference, destination: nil) }
      let(:product){ build(:product, category: category_2, reference: reference) }

      before do
        destination_2.categories << category_1
        destination_2.categories << category_2
        product.save
        product.reload
      end

      it 'sets a destination via category' do
        expect(product.destination).to eq destination_2
      end
    end

    context 'max price' do
      let(:reference){ create(:reference, destination: nil) }
      let(:category_2){ create(:category) }
      let!(:destination_3){ create(:destination, maximum_product_price: 9999.75) }
      let(:product){ build(:product, category: category_2, reference: reference) }

      before do
        product.save
        product.reload
      end

      it 'sets a destination via max price' do
        expect(product.destination).to eq destination_3
      end
    end
  end
end
