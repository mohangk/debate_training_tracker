require 'spec_helper'

describe 'create debate feedback' do

  let!(:debate) { FactoryGirl.create :debate }
  let!(:debater) { FactoryGirl.create :user, lab: debate.admin_user.lab }

  before :each do
    LoginPage.login_debater debater
  end

  it 'shows me the form' do
    click_on 'New Debate Training'
    expect(page).to have_content 'Test debate'
  end

end
