class Franquia
    def info
    puts "Restaurante faz parte da franquia"
    end
    def method_missing(name, *args)
        @restaurantes.each do |r|
        return "O restaurante #{r.nome} já foi cadastrado!"
        if r.nome.eql? *args
        end
        return "O restaurante #{args[0]} não foi cadastrado ainda."
    end

    end
end


class Restaurante < Franquia
    def info
    super
    puts "Restaurante Fasano"
    end
end

# metodo importante
# recebe franquia e invoca o método info
def informa(franquia)
    franquia.info
end
restaurante = Restaurante.new
informa restaurante
# Faça as chamadas e analise os resultados
puts franquia.já_cadastrado?("Fasano")
puts franquia.já_cadastrado?("Boteco")