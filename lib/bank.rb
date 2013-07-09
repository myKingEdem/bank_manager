class Bank
  attr_reader :name, :assets, :accounts, :liability

  def initialize(name, assets=1000.0)
    @name = name
    @assets = assets
    @accounts = []
    @liability = 0.0
  end

  def open_an_account(account)
    @accounts << account
  end

  def deposit(amount)
    @liability += amount
  end

  def withdraw(amount)
    @liability -= amount
  end
end