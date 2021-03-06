# LoginPage class
class LoginPage < SitePrism::Page
  set_url "http://#{CONTA_MOIP_URL}"

  element :input_username,        "input[name='login']"
  element :input_password,        "input[name='password']"
  element :button_acessar_conta,  '.mg-button._full._primary'

  def do_login(username = 'ms2.30.blog@gmail.com', password = 'moip1234')
    input_username.set username
    input_password.set password
    button_acessar_conta.click
  end
end
