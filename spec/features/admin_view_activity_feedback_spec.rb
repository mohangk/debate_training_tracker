require 'spec_helper'

describe 'Admin views activity feedback' do

  let!(:admin_user) { FactoryGirl.create :admin_user }

  before :each do
    AdminLoginPage.login_admin_user admin_user
    click_on 'Activity feedback'
  end

  it 'displays the list and filter options' do
    expect(page).to have_content 'Activity feedback'
    select admin_user.lab.name, from: 'lab'
  end

end
