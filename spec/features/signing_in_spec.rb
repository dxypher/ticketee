require 'rails_helper'

RSpec.feature 'User can sign in' do
  let!(:user) { FactoryGirl.create(:user) }

  scenario 'with a valid email and password' do
    visit '/'

    click_link 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'user_password', with: 'password'
    click_button "Log in"

    expect(page).to have_content 'Signed in successfully.'
    expect(page).to have_content "Signed in as #{user.email}"
  end
end
