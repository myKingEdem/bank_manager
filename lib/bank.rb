class Bank
  attr_reader :name, :assets, :accounts, :liability

  def initialize(name, assets=1000.0)
    @name = name
    @assets = assets
    @accounts = []
    @liability = 0.0
  end

  def open_an_account(account)
    branch_account = { name: account.name, address: account.hut_number, 
                    balance: account.balance, account_number: account.account_number }
    @accounts << branch_account
  end

  def deposit(account_number, amount)
    creditable_account = @accounts.detect { |acc| acc[:account_number] == account_number }
    creditable_account[:balance] += amount

    @liability += amount
  end

  def withdraw(account_number, amount)
    debitable_account = @accounts.detect { |acc| acc[:account_number] == account_number }
    unless debitable_account[:balance] <= amount
      debitable_account[:balance] -= amount
      @liability -=amount
    end
  end
end