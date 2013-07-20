require_relative '../lib/account'

describe Account, '#initialize' do
  before do
    name = 'Mozzie'
    hut_number = 'RV001A'

    @account = Account.new(name, hut_number)
  end

    it "has the owner's name" do
      expect(@account.name).to eql('Mozzie')
    end

    it "has the owner's hut_number" do
      expect(@account.hut_number).to eql('RV001A')
    end

    it "has an account number" do
      expect(@account.account_number).to eql(@account.object_id.to_s)
    end

    it "has 0 balance" do
      expect(@account.balance).to eql(0.0)
    end
  end