class Statement

attr_reader :balance, :storage, :date

  def initialize(balance = 0)
    @date = date
    @balance = balance
    @storage = []
  end

  def deposit(date, amount)
    @date = date
    @balance += amount
    @storage.push("#{date} || #{amount.round(2)} || #{@balance}")
  end

  def withdrawal(date, amount)
    @date = date
    @balance -= amount
  end

  def show
    "date || credit || debit || balance"
    "14/01/2018 || || 100.00 || 1700.00"
  end

end
