# Aulas de Ruby

♦️ Essas aulas e exercícios de Ruby tem como objetivo ajudar iniciantes na linguagem e aprimorar conhecimentos, fazendo das aulas em formato de código e exercícios para praticar.

### Ruby é...
Uma linguagem dinâmica, open source com foco na simplicidade e na produtividade. Tem uma sintaxe elegante de leitura natural e fácil escrita.

```rb
# A classe Saudação
class Saudacao
  def initialize(name)
    @name = name.capitalize
  end

  def sauda
    puts "Olá #{@name}!"
  end
end

# Criar um novo objecto
ola = Saudacao.new("mundo")

# Saída: "Olá Mundo!"
ola.sauda
```

Site oficial: <a href="https://www.ruby-lang.org/pt/" target="_blank">https://www.ruby-lang.org/pt/</a>