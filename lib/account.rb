class Account
  attr_reader :name, :hut_number, :account_number

  def initialize(name, hut_number, account_number)
    @name = name
    @hut_number = hut_number
    @account_number = account_number
  end
end