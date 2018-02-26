require './lib/statement.rb'

describe Statement do
  it 'client can make a deposit' do
    statement = Statement.new('14/01/2018')
    statement.deposit(2000)
    expect(statement).to respond_to(:deposit).with(1).argument
  end
end
