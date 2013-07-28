require 'spec_helper'

describe 'Debater can login' do

  let!(:user) { FactoryGirl.create :user }

  it 'can login' do
    login = LoginPage.new
    login.load
    login.should have_field 'Email'
    login.should have_field 'Password'
    dashboard_page = login.login user.email, 'password'
    expect(dashboard_page.displayed?).to eq(true)
    expect(dashboard_page).to have_content 'Signed in successfully.'
  end
end
