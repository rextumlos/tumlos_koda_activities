# John Rexpearl Tumlos
# Class Exercise 05
# Class for Bank Transactions:
# Develop a Ruby class called BankTransaction to represent individual bank transactions. Each transaction should have attributes like transaction_id, date, description, and amount. Implement methods to categorize transactions and calculate account balances.
require 'date'
class BankTransaction
  attr_accessor :transactions, :money, :transaction_index

  def initialize
    @money = 0
    @transaction_index = 1
    @transactions = []
  end

  def find_transaction_by_id(transaction_id)
    @transactions.each do |transaction|
      if transaction[:transaction_id] == transaction_id
        return transaction
      end
      false
    end
  end

  def add_transaction(date, description, amount)
    if @money + amount < 0
      return "You don't have enough balance to do the transaction."
    end

    new_transaction = {
      transaction_id: @transaction_index,
      date: date,
      description: description,
      amount: amount
    }

    @transactions << new_transaction
    @money += amount
    @transaction_index += 1
  end

  def categorize_transaction(transaction_id, category)
    transaction = find_transaction_by_id(transaction_id)
    if transaction
      transaction[:category] = category
    else
      "Transaction: #{transaction_id} does not exist."
    end
  end

  def to_s
    @transactions.each do |transaction|
      puts transaction.to_s
    end
  end

  def get_balance
    puts "$#{@money}"
  end
end

bank = BankTransaction.new
bank.add_transaction(Date.new(2023, 9, 15), "Salary Deposit", 5000.0)
bank.add_transaction(Date.new(2023, 9, 16), "Groceries", -100.0)
bank.add_transaction(Date.new(2023, 9, 17), "Utilities", -150.0)

bank.to_s
bank.get_balance

bank.categorize_transaction(1, "Deposit")
bank.categorize_transaction(2, "Expenses")
bank.categorize_transaction(3, "Expenses")

bank.to_s
