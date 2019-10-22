require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
    # SETUP
    before :each do
      @category = Category.create! name: 'Apparel'
  
      10.times do |n|
        @category.products.create!(
          name:  Faker::Hipster.sentence(3),
          description: Faker::Hipster.paragraph(4),
          image: open_asset('apparel1.jpg'),
          quantity: 10,
          price: 64.99
        )
      end
    end

    scenario "See product details" do

      # ACT
      visit root_path
      # save_screenshot

      # click_on Faker::Hipster.sentence(3)
      within(first('article')){
        click_link "Details »"
      }

      # DEBUG
      sleep 5
      save_screenshot 'products_specs.jpg'
  

      # VERIFY
      expect(page).to have_content "Apparel »"
      expect(page).to have_content "Quantity"
    end


end
