describe Statement do
  it 'client can make a deposit' do
    statement = Statement.new
    statement.deposit(2000)
    expect(statement).to respond_to(:deposit).with(1).argument
  end
end
