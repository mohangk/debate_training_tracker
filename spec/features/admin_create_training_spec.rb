require 'spec_helper'

describe 'Admin creates training' do
  it 'can login' do
    admin_login = AdminLoginPage.new
    admin_login.load
    admin_login.should have_field 'Email'
    admin_login.should have_field 'Password'
  end
end
