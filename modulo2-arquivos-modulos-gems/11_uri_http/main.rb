# =========================================================
=begin
    Iremos aprender mais detalhes sobre utilização dos
    módulos URI e HTTP.
=end
# =========================================================

# =========================================================
puts "= " * 10 # 1-Exemplos de uso
# =========================================================
# Importa a biblioteca 'uri', usada para manipular URLs
# Importa a biblioteca 'net/http', usada para fazer requisições HTTP
require "uri"              
require "net/http"         

# Site que será utilizado como exemplo
# Converte a string em um objeto URI, separando host, porta, esquema etc.
url = URI.parse('https://www.example.com')  

# Cria um objeto HTTP apontando para o host e a porta extraídos da URL
http = Net::HTTP.new(url.host, url.port)    

# Ativa SSL/TLS caso o esquema da URL seja HTTPS
http.use_ssl = (url.scheme == 'https')      

# Cria uma requisição HTTP do tipo GET para a URL fornecida
request = Net::HTTP::Get.new(url)           

# Envia a requisição e guarda a resposta do servidor
response = http.request(request)            

# Verifica se a resposta indica sucesso (códigos 2xx)
if response.is_a?(Net::HTTPSuccess)         
    # Imprime o código HTTP e mensagem (ex.: 200 OK)
    puts "Status: #{response.code} #{response.message}"  
    # Exibe o conteúdo retornado pelo servidor (HTML, JSON etc.)
    puts response.body                       
else
    # Exibe mensagem de erro com o código recebido
    puts "A requisição falhou com status #{response.code}" 
end
