require_relative 'lib/bank'
require_relative 'lib/account'

bank = Bank.new('Bank of RubyVillage')
puts "#{ bank.name }"

puts ""

#Accounts
keynes = Account.new('Keynes', 'RV001A')
bank.open_an_account(keynes)
smith = Account.new('Smith', 'RV001B')
bank.open_an_account(smith)

bank.deposit(smith.account_number, 200.0)
bank.withdraw(keynes.account_number, 100.0)

#Checks
puts bank.accounts
puts bank.liability
puts bank.assets 
puts bank.accounts.count
