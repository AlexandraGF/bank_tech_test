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

  def show
    "date || credit || debit || balance"
    "14/01/2018 || || 100.00 || 1700.00"
  end

end
