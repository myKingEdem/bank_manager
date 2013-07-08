require_relative '../lib/account'

describe Account, '#initialize' do
  before do
    name = 'Mozzie'
    hut_number = 'RV001A'
    account_number = 'AN0001'

    @account = Account.new(name, hut_number, account_number)
  end

    it "has the owner's name" do
      expect(@account.name).to eql('Mozzie')
    end

    it "has the owner's hut_number" do
      expect(@account.hut_number).to eql('RV001A')
    end

    it "has an account number" do
      expect(@account.account_number).to eql('AN0001')
    end
  end