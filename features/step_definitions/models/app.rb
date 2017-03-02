# module to instanciate only once the pages
module App
  def login_page
    LoginPage.new
  end

  def statement_page
    Statement.new
  end
end
World(App)
