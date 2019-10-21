require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    subject {
      described_class.new(
      name: 'Human Feet Shoes',
      quantity: 82,
      price_cents: 224.50,
      category: Category.new(name: "test cat")
    )}

    it "is valid given valid parameters" do
      expect(subject).to be_valid
      expect(subject.errors.full_messages.first).to eq nil
    end
    it "validates name is present" do
      subject.name = nil
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages.first).to eq "Name can't be blank"
    end
    it "validates price is present" do
      subject.price_cents = nil
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages.first).to eq "Price cents is not a number"
    end
    it "validates quantity is present" do
      subject.quantity = nil
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages.first).to eq "Quantity can't be blank"
    end
    it "validates category is present" do
      subject.category = nil
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages.first).to eq "Category can't be blank"
    end

  end
end