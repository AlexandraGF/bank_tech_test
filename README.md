## Bank Tech Test

### User Stories

```
As a client
So I can have money in my account
I want to be able to make a deposit.

As a client
So I can withdraw money from my account
I want to be able to make a withdrawal.

As a client
So I can check my transactions
I want to be able to see an account statement containing date, amount(credit/debit), balance.
```

## Run the bank account statement app

1. Open your terminal and clone this repository
```git clone git@github.com:AlexandraGF/bank_tech_test.git
```
2. Change directory by ```cd bank_tech_test``` and type ```
bundle```
3. Open IRB by typing ```irb``` on you terminal
4. Type the following commands, one at a time and press enter after each one
```
require './lib/statement.rb'
```
```
statement = Statement.new (you start with a new Account statement)
```
```
statement.deposit("13/02/2018", 3000) (make a deposit with a date and amount)
```
```
statement.withdrawal("15/02/2018", 2000) (make a withdrawal with a date and amount)
```
```
statement.show  (will print all of the transactions on screen)
```
After statement.show, you can either deposit or withdrawal as many times you want and then statement.show to display all the transactions together.
5. When you want to finish the session, type ```exit``` on your terminal
