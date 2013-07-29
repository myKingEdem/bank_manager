class Bank
  attr_reader :name, :assets, :accounts, :liability

  def initialize(name, assets=1000.0)
    @name = name
    @assets = assets
    @accounts = []
    @liability = 0.0
  end

  def open_an_account(account)
    @accounts << { account: account }
  end

  def deposit(account, amount)
    creditable_account = find_account(account)
    creditable_account.balance += amount
    @liability += amount
  end

  def withdraw(account, amount)
    debitable_account = find_account(account)
    unless debitable_account.balance < amount
      debitable_account.balance -= amount
      @liability -=amount
    end
  end

  private

  def find_account(account)
    this_account = @accounts.detect { |hash| hash[:account] == account }
    this_account.values.first
  end
end