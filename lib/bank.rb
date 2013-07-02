class Bank
  attr_reader :name, :assets, :accounts, :liability

  def initialize(name, assets=1000.00)
    @name = name
    @assets = assets
    @accounts = []
    @liability = 0.00
  end

  def open_an_account(account)
    @accounts << account
  end

  def deposit(ammount)
    @liability += ammount
  end

  def withdraw(ammount)
    @liability -= ammount
  end
end