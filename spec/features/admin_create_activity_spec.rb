require 'spec_helper'

describe 'Admin creates training' do

  let!(:admin_user) { FactoryGirl.create :admin_user }

  before :each do
    AdminLoginPage.login_admin_user admin_user
    click_on 'Activities'
    click_on 'New Activity'
  end

  it 'can create a training' do
    fill_in 'Topic', with: 'Test topic'
    fill_in 'Venue', with: 'Test venue'
    fill_in 'Description', with: 'Test description'
    select admin_user.name, from: 'Admin user'
    click_on 'Create Activity'
    expect(page).to have_content 'Activity was successfully created'
  end


end
