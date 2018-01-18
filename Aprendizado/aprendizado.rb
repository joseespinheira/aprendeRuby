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
































