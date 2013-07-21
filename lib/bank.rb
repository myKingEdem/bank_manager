class Bank
  attr_reader :name, :assets, :accounts, :liability

  def initialize(name, assets=1000.0)
    @name = name
    @assets = assets
    @accounts = []
    @liability = 0.0
  end

  def open_an_account(account)
    branch_account = { account: account }
    @accounts << branch_account
  end

  def deposit(account, amount)
    find_account = @accounts.detect { |acc| acc[:account] == account }
    creditable_account = find_account.values.first
    creditable_account.balance += amount
    @liability += amount
  end

  def withdraw(account, amount)
    find_account = @accounts.detect { |acc| acc[:account] == account }
    debitable_account = find_account.values.first

    unless debitable_account.balance < amount
      debitable_account.balance -= amount
      @liability -=amount
    end
  end
end