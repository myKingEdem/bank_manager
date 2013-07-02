require_relative '../lib/bank'
require_relative '../lib/account'

describe Bank, '#initialize' do
  before do
    @name = 'Bank of RubyVillage'
    @assets = 1000.00
    @bank = Bank.new(@name, @assets)
  end

  it "has a name" do
    expect(@bank.name).to eql('Bank of RubyVillage')
  end

  it "has an initial_asset" do
    expect(@bank.assets).to eql(1000.00)
  end

  it "has no accounts" do
    expect(@bank.accounts.size).to eql(0)
  end

  it "does not have a liability" do
    expect(@bank.liability).to eql(0.00)
  end
end

describe Bank, '#open_an_account' do
  it "creates an additional account" do
    bank = Bank.new('BoRV')
    account = Account.new('Peter', 'RB001B', 'AN0001')

    bank.open_an_account(account)

    expect(bank.accounts.count).to eql(1)
  end
end

describe Bank, '#deposit' do
  it "increases the bank's liability" do
    bank = Bank.new('BoRV')
    bank.deposit(100.00)

    expect(bank.liability).to eql(100.00)
  end
end

describe Bank, '#withdraw' do
  it "descreases the bank's liability" do
    bank = Bank.new('BoRV')
    bank.withdraw(50.00)

    expect(bank.liability).to eql(-50.00)
  end
end