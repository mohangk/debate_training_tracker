class LoginPage < SitePrism::Page
  set_url "/users/sign_in"

  def login username, password
    page.fill_in 'Email', with: username
    page.fill_in 'Password', with: password
    page.click_on 'Sign in'
    DashboardPage.new
  end

  def self.login_debater debater
    LoginPage.new.tap do | login_page |
      login_page.load
      dashboard_page = login_page.login debater.email, debater.password
      dashboard_page.displayed?
    end
  end

end
