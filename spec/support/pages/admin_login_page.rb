class AdminLoginPage < SitePrism::Page
  set_url "/admin/login"

  def login username, password
    page.fill_in 'Email', with: username
    page.fill_in 'Password', with: password
    page.click_on 'Login'
    AdminDashboardPage.new
  end

  def self.login_admin_user admin_user
    AdminLoginPage.new.tap do | login_page |
      login_page.load
      dashboard_page = login_page.login admin_user.email, admin_user.password
      dashboard_page.displayed?
    end
  end

end
