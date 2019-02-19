require 'rails_helper'

feature 'user has parsonal homepage' do
  let(:user) {create(:user_with_vehicles)}
  before :each do
    user.confirmed_at = Time.now
    login_as(user, scope: :user)
    visit root_url
  end
  scenario 'sees it on login' do
    expect(page).to have_content('Vehicles')
  end
  scenario 'sees all their vehicles' do
    user.vehicles.each do |v|
      expect(page).to have_content(v.registration)
    end
  end

end