# encoding: utf-8
# language: pt

Given(/^que usuario esteja na pagina$/) do
  login_page.load
  login_page.do_login
end

When(/^clicar em periodo dos 30 dias$/) do
  statement_page.load
  statement_page.select_date
end

Then(/^o extrato deve apresentar os debitos e lançamentos dos ultimos 30 dias$/) do
  expect(statement_page.assert_statement_table).to eq (Time.now.strftime("%d/%m/%y"))
end
