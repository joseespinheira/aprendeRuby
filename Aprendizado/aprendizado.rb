# Linha de aprendizado:

# comentário de uma linha
puts "Hello Word"
print "Hello Word"
puts ""
=begin
Comentario
em
varias
linhas.
=end
p "Hello Word"

# Atribuição:
nome = "José"
puts nome
# Vendo o tipo de classe:
print "A clase é: " 
puts nome.class

## Exemplo:
#puts "Digite o nome do restaurante"
#nome = gets
#print "Nome do restaurante: "s
puts nome

puts puts puts puts
=begin


# A divisão sempre aredonda para baixo se for numeros inteiros
a = 15 + 0.0
b = 2
c = a/b
puts c

# Estruturas de controle:

 variavel = nil
 if(variavel)
 puts("so iria imprimir se variavel != null")
 end

 if(3 == 3)
 puts("3 é 3")
 end

# Exemplo de switch com default:
def procura_sede_copa_do_mundo( ano )
    case ano
        when 1895..2005
            "Não lembro... :)"
        when 2006..2009
            "Alemanha"
        when 2010..2013
            "África do Sul"
        when 2014..2017
            "Brasil"
        when 2018
            "Russia"
        else
            "Não há registro para o ano #{ano}"
    end
end
puts procura_sede_copa_do_mundo(2051)



# Mesmo exemplo com If
ano = 1899

if 2006 == ano
    puts "Alemanha"
elsif 2010 == ano
    puts "África do Sul"
elsif 2014 == ano
    puts "Brasil"
elsif ano >= 1895 || 2005 >= ano
    puts "Não lembro... :)"
else
    puts "Não achei."
end

# Laço de repetição
for i in (1..3)
    x = i
    puts x
end


resultado = 10 + 3
texto = "O valor é: #{resultado}"
puts(texto)


def h(nome)
    puts "Olá #{nome}!"
end

h("teste")
# Definindo uma função simples de entrada de parametro e saida de dados.
def pessoa_vai(lugar)
    puts "indo para " + lugar;
end


pessoa_vai("Casa")


# O parametro Lugar se não for passado é por padrão definido na função
def pessoa_troca(roupa, lugar='banheiro')
    puts "trocando de #{roupa} no #{lugar}"
end
# invocação sem o parametro:
pessoa_troca("camiseta")
# invocação com o parametro:
pessoa_troca("camiseta", "sala")

puts ""
puts ""


# Classe
class Pessoa
    def fala
    puts "Sei Falar"
    end
    
    def troca(roupa, lugar="banheiro")
    "trocando de #{roupa} no #{lugar}"
    end
end

p = Pessoa.new
# o objeto apontado por p já nasce com os métodos fala e troca.

# Pode-se adicionar outro metodo sem criar outra classe.
class Pessoa
    def novo_metodo
        # ...
    end
end

# Imprime o nome da classe:
puts p.class
# => Pessoa

# imprime todos os metodos da classe:
print Pessoa.instance_methods

# pula linha
puts
puts

#obj = "uma string"
#obj.puts "todos os objetos possuem o método puts?"

# Array

lista = [1, 2, "string", :simbolo, /$regex^/]
puts lista[2]


for i in (0..4)
    puts lista[i]
end


#cliente = "Petrobras"
#puts cliente.methods

puts puts

# Entrada de Varios parametros
def compra(*produtos)
    # produtos é uma array
    puts produtos.size
end

compra(1,2,3,4,5,6)

# haster é bom ver mais tarde




# Programação funcional.

class Banco
    
    def initialize(contas)
        @contas = contas
    end
    
    def status
        saldo = 0
        for conta in @contas
            saldo += conta
            puts saldo
        end
        saldo
    end
end

banco = Banco.new([200, 300, 400])
puts banco.status

puts
class Banco
# initialize...
def status
saldo = 0
for conta in @contas
saldo += conta
if block_given?
yield(saldo)
end
end
saldo
end
end

banco.status do |saldo|
puts saldo
end



lista = ["rails", "rake", "ruby", "rvm"]
lista.each do |programa|
    puts programa
end
puts puts puts puts

funcionarios = ["Guilherme", "Sergio", "David"]
nomes_maiusculos = []
for nome in funcionarios
    nomes_maiusculos << nome.upcase
end
puts nomes_maiusculos


caelum = [
{ruby: 'rr-71', java: 'fj-11'},
{ruby: 'rr-75', java: 'fj-21'}
]
caelum.sort_by { |curso| curso[:ruby] }.each do |curso|
puts "Curso de RoR na Caelum: #{ curso[:ruby] }"
end
caelum.sort_by { |curso| curso[:ruby] }.each do |curso|
next if curso[:ruby] == 'rr-71'
puts "Curso de RoR na Caelum: #{ curso[:ruby] }"
end

class Turma
    def initialize(*nome)
        @nome = nome
    end
    def size
        return @nome.size
    end
    def imprimir
        i = 1
        @nome.each do |nome|
            print i
            puts " - #{nome}"
            i += 1
        end
    end
    
end
#for restaurante in @restaurantes
#puts restaurante.nome
#end

fjj = Turma.new("Guilherme", "Paulo", "Sérgio")

puts
puts fjj.size

fjj.imprimir

# erros em ruby

print "Digite um número:"
numero = gets.to_i
begin
resultado = 100 / numero
rescue
puts "Número digitado inválido!"
exit
end
puts "100/#{numero} é #{resultado} "


# erro com raise

def verifica_idade(idade)
unless idade > 18
raise ArgumentError,
"Você precisa ser maior de idade para jogar jogos violentos."
end
end
verifica_idade(17)

class IdadeInsuficienteException < Exception
end
def verifica_idade(idade)
raise IdadeInsuficienteException,
"Você precisa ser maior de idade..." unless idade > 18
end

begin
verifica_idade(13)
rescue IdadeInsuficienteException => e
puts "Foi lançada a exception: #{e}"
end




def pesquisa_banco(nome)
if nome.size < 10
throw :nome_invalido, "Nome invalido, digite novamente"
end
# executa a pesquisa
"cliente #{nome}"
end
def executa_pesquisa(nome)
catch :nome_invalido do
cliente = pesquisa_banco(nome)
return cliente
end
end
puts executa_pesquisa("ana")
# => "Nome invalido, digite novamente"
puts executa_pesquisa("guilherme silveira")
# => cliente guilherme silveira



puts
puts
puts



print "Escreva um texto: "
texto = gets
File.open( "caelum.txt", "w" ) do |f|
f << texto
end

require 'net/http'
Net::HTTP.start( 'www.caelum.com.br', 80 ) do |http|
print( http.get( '/' ).body )
end

=end

puts "teste"

# Conseito de herança
class Animal
    def come
        puts "comendo!"
    end
end
class Pato < Animal
    def quack
        puts "Quack!"
    end
end
pato = Pato.new
pato.come
pato.quack
# => "comendo"



class PatoNormal
    def faz_quack
    puts "Quack!"
    end
end

class PatoEstranho
    def faz_quack
    puts "Queck!"
    end
end

class CriadorDePatos
    def castiga(pato)
    pato.faz_quack
    end
end

pato1 = PatoNormal.new
pato2 = PatoEstranho.new
c = CriadorDePatos.new
c.castiga(pato1) # => "Quack!"
c.castiga(pato2) # => "Queck!"








