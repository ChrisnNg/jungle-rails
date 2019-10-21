require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    subject { described_class.new }

    it "is valid given valid parameters" do
      @category = Category.new(name: "test cat")

        subject.name = 'Human Feet Shoes',
        subject.quantity = 82,
        subject.price = 224.50,
        subject.category = @category

      expect(subject).to be_valid
    end
    it "validates name is present"
    it "validates price is present"
    it "validates quantity is present"
    it "validates category is present"
    # validation tests/examples here
  end
end