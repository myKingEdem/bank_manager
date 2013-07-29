class Account
  attr_reader :name, :hut_number, :account_number
  attr_accessor :balance

  def initialize(name, hut_number)
    @name = name
    @hut_number = hut_number
    @account_number = object_id.to_s
    @balance = 0.0
  end
end