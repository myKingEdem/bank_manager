require_relative 'lib/bank'
require_relative 'lib/account'

bank = Bank.new('Bank of RubyVillage')
puts "#{ bank.name }"

puts ""

#Accounts
keynes = Account.new('Keynes', 'RV001A','2011')
bank.open_an_account(keynes)
smith = Account.new('Smith', 'RV001B', '2012')
bank.open_an_account(smith)

bank.deposit(smith, 200.0)
bank.deposit(keynes, 100.0)

bank.withdraw(smith, 50.0)
bank.withdraw(keynes, 30.0)

#Checks
puts bank.accounts
puts bank.liability
puts bank.assets 
puts bank.accounts.count