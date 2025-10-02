# =========================================================
puts "= " * 10 # 1-Blocks
# =========================================================
# Blocos são trechos anônimos de código que aceitam entradas de argumentos e retornam um determinado valor
def hello
    yield # forma de executar um bloco de código
end

hello { puts "Hello World1" } # bloco de código que será executado
hello { puts "Hello World2" }
hello { puts "Hello World3" }

=begin
Seria isso no JS:
    hello(() => {
    console.log("Hello World");
    });
=end

def um_dois_tres
    yield 1
    yield 2
    yield 3
end

um_dois_tres { |num| puts num * 10 }

# =========================================================
puts "= " * 10 # 2-Função de potência de um número
# =========================================================
poder = lambda { |num| num ** 2 } # é uma forma explícita de definir uma função anônima
puts poder.call(4)

=begin
Seria isso no JS:
    const poder = (num) => num ** 2;
    console.log(poder(4));
=end

# =========================================================
puts "= " * 10 # 3-Função que verifica se o número é par
# =========================================================
par = lambda { |x| x % 2 == 0 }
puts par.call(5)

# =========================================================
puts "= " * 10 # 4-Função que divide um número por outro
# =========================================================
divNum = lambda { |x, y| x / y }
puts divNum.call(10, 5)