require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do

  scenario "They see all products" do
    User.create!(
      first_name: 'John',
      last_name: 'Doe',
      email: 'test@new.COM',
      password: 'password',
      password_confirmation: 'password'
    )
    # ACT
    visit root_path
    click_link 'Login'

    within 'form' do
      fill_in id: 'email', with: 'test@new.COM'
      fill_in id: 'password', with: 'password'
      click_button 'Login'
    end
    # DEBUG
    sleep 5
    save_screenshot "login.jpg"

    # VERIFY
    expect(page).to have_content "John"
    expect(page).to_not have_content "Login"
  end
  
end
