#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
# language: pt

@ContaTeste
Funcionalidade: Testar as operacoes basicas de conta
  O sistema deve proves o saque e deposito na conta de forma correta.
  Seguindo as seguintes restrições?
  1) Só libera o saque, se o valor do saque for menor ou igual ao valor do saldo disponível na conta
  2) Só libera o deposito, se o valor do deposito for menor ou igual ao valor do limite disponível na conta

  Esquema do Cenario: Testar saque e deposito
    Dado a conta criada para o dono "<dono>" de numero <numero> com limite <limite> e saldo <saldo>
    Quando o dono realiza o deposito no valor da <deposito> na conta
    E o dono realiza o primeir saque no valor de <primeiro_saque> na conta
    E o dono realiza o segundo saque no valor de <segundo_saque> na conta
    Entao o dono tem o saldo no valor de <saldo_esperado> na conta

    Exemplos: 
| dono |numero|limite|saldo|deposito|primeiro_saque|segundo_saque|saldo_esperado|
|Brendo| 111  | 1000 | 0   | 100    | 10           | 10          | 80           |
|Hiago | 222  | 1000 | 0   | 200    | 10           | 10          | 180          |