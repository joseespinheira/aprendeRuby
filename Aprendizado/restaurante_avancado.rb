class Restaurante
    attr_accessor :nota
    
    def initialize(nome)
        puts "criando um novo restaurante: #{nome}"
        @nome = nome
    end
    
    def qualifica(msg="Obrigado")
        puts "A nota do #{@nome} foi #{@nota}. #{msg}"
    end
    def fechar_conta(dados)
        puts "Conta fechada no valor de #{dados[:valor]} e com nota #{dados[:nota]}. Comentário: #{dados[:comentario]}"
    end

end

restaurante_um = Restaurante.new("Fasano")
restaurante_dois = Restaurante.new("Fogo de Chao")

restaurante_um.nota = 10
restaurante_dois.nota = 1

restaurante_um.qualifica
restaurante_dois.qualifica("Comida ruim.")
restaurante_um.fechar_conta valor: 50, nota: 9, comentario: 'Gostei!'



