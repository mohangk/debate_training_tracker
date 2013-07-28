require 'spec_helper'

describe 'create activity feedback', js: true do

  let!(:activity) { FactoryGirl.create :activity }
  let!(:activity2) { FactoryGirl.create :activity, topic: 'Test activity 2', description: 'Test activity 2 description', admin_user: activity.admin_user }
  let!(:debater) { FactoryGirl.create :user, lab: activity.admin_user.lab }

  before :each do
    LoginPage.login_debater debater
  end

  it 'shows me the form' do
    click_on 'New Activity Training'
    expect(page).to have_content 'Test activity'
    select 'Test activity 2', from: 'Activity'
    expect(page).to have_content 'Test activity 2 description'

  end

end
