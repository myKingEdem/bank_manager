class Account
  attr_reader :holder_name, :address, :pin, :account_number
  attr_accessor :balance

  def initialize(holder_name, address, pin)
    @holder_name = holder_name
    @address = address
    @pin = pin
    @account_number = object_id.to_s
    @balance = 0.0
  end
end