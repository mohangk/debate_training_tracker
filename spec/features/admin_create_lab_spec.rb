require 'spec_helper'

describe 'Admin creates lab' do

  let!(:admin_user) { FactoryGirl.create :admin_user }

  before :each do
    AdminLoginPage.login_admin_user admin_user
    click_on 'Labs'
    click_on 'New Lab'
  end

  it 'can create a training' do
    fill_in 'Name', with: 'Test lab 2'
    click_on 'Create Lab'
    expect(page).to have_content 'Lab was successfully created'
  end


end
