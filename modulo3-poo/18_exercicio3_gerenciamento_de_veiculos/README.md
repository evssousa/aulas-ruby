# Gerenciamento de Veículos

Você está criando um sistema para gerenciar veículos em um estacionamento. Há dois tipos de veículos que precisam ser tratatos: carros e motos. Ambos têm alguma informação em comum, como placa e marca, mas também têm informações exclusivas, como a quantidade de portas para carros e a cilindrada para motos.

1. Crie uma classe base chamada Veículo com os atributos comuns: placa e marca. Ela deve ter um método chamado detalhes que exibe a placa e a marca do veículo.
2. Crie duas subclasses, Carro e Moto, que herdam de Veículo. A classe Carro deve ter um atributo adicional chamado portas, e a classe Moto deve ter um atributo adicional chamado cilindrada. Cada uma dessas subclasses deve sobescrever o método detalhes para incluir os atributos exclusivos.
3. Crie uma função chamada exibir_detalhes que aceita um objeto de qualquer uma das classes (Carro ou Moto) e chama o método detalhes sobre ele.

OBS: Use o polimorfismo para permitir que a função funcione de maneira uniforme com ambos os tipos de veículos.