require 'spec_helper'

describe 'Admin views debates' do

  let!(:admin_user) { FactoryGirl.create :admin_user }

  before :each do
    AdminLoginPage.login_admin_user admin_user
    click_on 'Debates'
  end

  it 'displays the list and filter options' do
    expect(page).to have_content 'Debates'
    select admin_user.lab.name, from: 'lab'
  end

end
