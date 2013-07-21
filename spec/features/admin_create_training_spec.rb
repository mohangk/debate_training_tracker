require 'spec_helper'

describe 'Admin creates training' do

  let!(:admin_user) { FactoryGirl.create :admin_user }

  it 'can login' do
    admin_login = AdminLoginPage.new
    admin_login.load
    admin_login.should have_field 'Email'
    admin_login.should have_field 'Password'
    admin_dashboard_page = admin_login.login admin_user.email, 'password'
    expect(admin_dashboard_page.displayed?).to eq(true)
  end
end
