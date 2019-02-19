require 'rails_helper'

feature 'Visitor signs up' do
  scenario 'with valid email and password' do
    sign_up_with Faker::Internet.email, Faker::Internet.password
    expect(page).to have_content('Logout')
  end
  scenario 'with invalid email' do
    sign_up_with 'invalid', Faker::Internet.password
    expect(page).to have_content('Email is invalid')
  end
  scenario 'with blank password' do
    sign_up_with Faker::Internet.email, ''
    expect(page).to have_content('Password can\'t be blank')
  end

  def sign_up_with(email, password)
    visit new_user_registration_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    click_button 'Sign up'
  end
end