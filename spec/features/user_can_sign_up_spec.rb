require 'spec_helper'

describe 'anyone can sign up' do

  let!(:lab) { FactoryGirl.create :lab }

  it 'via the form' do
    visit '/'
    click_on 'Sign up'
    select lab.name, from: 'Lab'
    fill_in 'Name', with: 'Test name'
    fill_in 'Institution', with: 'Test institution'
    fill_in 'Email', with: 'email@test.com'
    fill_in 'Password', match: :prefer_exact, with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end

end
