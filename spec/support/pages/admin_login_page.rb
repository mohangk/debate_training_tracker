class AdminLoginPage < SitePrism::Page
  set_url "/admin/login"

  def login username, password
    page.fill_in 'Email', with: username
    page.fill_in 'Password', with: password
    page.click_on 'Login'
    AdminDashboardPage.new
  end
end
