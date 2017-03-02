# LoginPage class
class Statement < SitePrism::Page
  set_url "https://conta-sandbox.moip.com.br/statement"

  element :input_range_date,              "#begin_end"
  element :select_today,        :xpath,   "//div[3]/ul/li[1]"
  element :date_assert,         :xpath,   "//table[@id='statement']/tbody/tr[2]/td[2]/strong"

  def select_date
    input_range_date.click
    select_today.click
  end

  def assert_statement_table
    return date_assert.text
  end
end
