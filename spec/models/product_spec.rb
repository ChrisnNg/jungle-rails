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
    end
    it "validates name is present" do
        subject.name = nil
      expect(subject).to_not be_valid
    end
    it "validates price is present" do
        subject.price_cents = nil
      expect(subject).to_not be_valid
    end
    it "validates quantity is present" do
        subject.quantity = nil
      expect(subject).to_not be_valid
    end
    it "validates category is present" do
        subject.category = nil
      expect(subject).to_not be_valid
    end

  end
end