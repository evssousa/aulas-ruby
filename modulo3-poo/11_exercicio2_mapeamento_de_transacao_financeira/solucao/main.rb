class FinancialTransaction
  attr_reader :to, :from, :amount
  attr_accessor :completed

  def initialize(to, from, amount, completed)
    @to = to
    @from = from
    @amount = amount
    @completed = completed
  end

  def to_s
    puts "De: #{@to}"
    puts "Para: #{@from}"
    puts "Saldo: #{@amount}"
    puts "Status: #{@completed}"
  end
end

transaction1 = FinancialTransaction.new("John", "Everson", 1000, false)
puts transaction1

transaction1.completed = true
puts transaction1