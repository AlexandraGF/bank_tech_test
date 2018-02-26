require './lib/statement.rb'

describe Statement do
  it 'client can make a deposit' do
    statement = Statement.new
    statement.deposit('14/01/2018', 2000)
    expect(statement).to respond_to(:deposit).with(2).arguments
  end

  it 'statement has the deposit in the account' do
    statement = Statement.new
    statement.deposit('14/01/2018', 2000)
    expect(statement.balance).to eq(2000)
  end

  it 'after withdrawal, new balance should be lower' do
    statement = Statement.new
    statement.deposit('14/01/2018', 2000)
    withdrawal = statement.withdrawal('14/01/2018', 500)
    expect(statement.balance).to eq(1500)
  end

  it 'after deposit, checks the account storage has the new transaction with date, amount, balance' do
    statement = Statement.new
    statement.deposit('14/01/2018', 2000)
    expect(statement.storage.length).to eq(1)
  end

  it 'account statement can be printed on screen with date, deposit/withdrawal and new balance' do
    statement = Statement.new
    statement.deposit("14/01/2018", 2000)
    expect(statement.storage[0]).to eq("14/01/2018 || 2000.00 || 2000.00")
  end

end
