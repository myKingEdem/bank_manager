require_relative 'lib/bank'
require_relative 'lib/account'

bank = Bank.new('Bank of RubyVillage')
puts "#{ bank.name }"

puts ""

#Accounts
ricardo = Account.new('Ricardo', 'RV001A', '10000001')
bank.open_an_account(ricardo)

puts "Ricardo's Account: #{ricardo.name}# Hut Number: #{ricardo.hut_number}"

# Transactions
bank.deposit(100.00)
bank.withdraw(25.00)
bank.deposit(10.00)

#Checks
puts bank.liability
puts bank.assets 
puts bank.accounts.count