      require 'rspec/expectations'
      require 'capybara'
      require 'capybara/cucumber'
      require 'capybara/dsl'
      require 'capybara/window'
      require 'selenium-webdriver'
      require 'site_prism'
      require 'pry'
      require 'rspec'

      World(RSpec::Matchers)

      env = %w(sandbox).include?(ENV['ENV']) ? ENV['ENV'].to_sym : :sandbox

      Dir['../.././pages/*.rb'].each { |file| require file }

      SitePrism.configure do |config|
        config.use_implicit_waits = true
      end

      CONTA_MOIP_CONFIG = {
        sandbox: ['connect-sandbox.moip.com.br']
      }.freeze


      CONTA_MOIP_URL = CONTA_MOIP_CONFIG.fetch(env)[0]


    Capybara.register_driver :chrome do |app|
        caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "--start-maximized" ]})
	    Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
    end
    Capybara.default_driver = :chrome
    Capybara.default_max_wait_time = 10
    Capybara.javascript_driver = :webkit
    Capybara.page.driver.browser.manage.window.maximize

    After do |scenario|
      Capybara.reset_sessions!
    end
