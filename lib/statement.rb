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
    @storage << "#{date} || #{amount}.00 || #{@balance}.00"
  end

  def withdrawal(date, amount)
    @date = date
    @balance -= amount
  end

  def show
    "date || credit || debit || balance"
    @storage.each do |item|
      puts item
    end
  end

end
