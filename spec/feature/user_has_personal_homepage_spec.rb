require 'rails_helper'

feature 'user has parsonal homepage' do
  let(:user) {create(:user)}
  scenario 'sees it on login' do
    user.confirmed_at = Time.now
    login_as(user, scope: :user)
    visit root_url
    expect(page).to have_content('Vehicles')
  end
end