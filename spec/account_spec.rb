require_relative '../lib/account'

describe Account, '#initialize' do
  before do
    name = 'Mozzie'
    address = 'RV001A'
    pin = '4343'

    @account = Account.new(name, address, pin)
  end

    it "has the holder's name" do
      expect(@account.holder_name).to eql('Mozzie')
    end

    it "has the owner's address" do
      expect(@account.address).to eql('RV001A')
    end

    it "has pin number" do
      expect(@account.pin).to eql('4343')
    end

    it "has an account number" do
      expect(@account.account_number).to eql(@account.object_id.to_s)
    end

    it "has 0 balance" do
      expect(@account.balance).to eql(0.0)
    end

  context "creating another accounts" do
    it "has a unique account_number" do
      account_2 = Account.new('Smith', 'RV001B', '3454')
      expect(account_2.account_number).to_not eql(@account.account_number)
    end
  end
end