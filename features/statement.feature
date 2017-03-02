# encoding: utf-8
# language: pt

Funcionalidade: Detalhes do extrato financeiro


Cenário: Validar extrato financeiro consolidado
  Dado que usuario esteja na pagina
  Quando clicar em periodo dos 30 dias
  Então o extrato deve apresentar os debitos e lançamentos dos ultimos 30 dias
