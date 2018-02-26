class Statement

attr_reader :balance

  def initialize(date, balance = 0)
    @date = date
    @balance = balance
  end

  def deposit(amount)
    @balance = amount
  end

  def withdrawal(amount)
    @balance -= amount
  end

end
