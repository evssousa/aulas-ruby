class Project
  def initialize
    @name = "Automação Web"
    @budget = 1000
    @members = ["Fulano", "Sicrano"]
  end

  # Método to_s
  def to_s
    puts "Nome: #{@name}"
    puts "Orçamento: #{@budget}"
    puts "Membros: #{@members}"
  end

  # Métodos Getters
  def name
    @name
  end

  def budget
    @budget
  end

  def members
    @members
  end

  # Métodos Setters
  def budget=(new_value)
    @budget = new_value
  end
end

project = Project.new
puts project

puts project.budget

project.budget = 2500
puts project.budget