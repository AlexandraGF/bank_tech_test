require './lib/statement.rb'

describe Statement do
  it 'client can make a deposit' do
    statement = Statement.new('14/01/2018')
    statement.deposit(2000)
    expect(statement).to respond_to(:deposit).with(1).argument
  end

  it 'statement has the deposit in the account' do
    statement = Statement.new('14/01/2018')
    statement.deposit(2000)
    expect(statement.balance).to eq(2000)
  end

  it 'after withdrawal, new balance should be lower' do
    statement = Statement.new('14/01/2018')
    statement.deposit(2000)
    withdrawal = statement.withdrawal(500)
    expect(statement.balance).to eq(1500)
  end

end
