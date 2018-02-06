# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# add 10 itens para teste de restaurantes:
Restaurante.create(nome: "Fogão Quente", endereco: "Rua Aguiar Santos", especialidade: "Massa");
Restaurante.create(nome: "China in Box", endereco: "Shopping Salvador", especialidade: "Chinesa");
Restaurante.create(nome: "Ifood", endereco: "Internet", especialidade: "Delivery");
Restaurante.create(nome: "Pizza na hora", endereco: "Rua Direta do capelão", especialidade: "Pizza");
Restaurante.create(nome: "Rango quente", endereco: "Rua do milho", especialidade: "Quentinha");
Restaurante.create(nome: "Potato", endereco: "Shopping Salvador Norte", especialidade: "Batata");
Restaurante.create(nome: "MC Donald's", endereco: "Shopping Bela vista", especialidade: "Hamburger");
Restaurante.create(nome: "Burge King", endereco: "Av. Lucaia", especialidade: "Hamburger");
Restaurante.create(nome: "Girrafas", endereco: "Av. Oceania", especialidade: "Pocaria");
Restaurante.create(nome: "Bob's", endereco: "Shopping Itaigara", especialidade: "Hamburger");

# Add Clientes
Cliente.create(nome: "Joana", idade: '18');
Cliente.create(nome: "Joao", idade: '21');
Cliente.create(nome: "Jose", idade: '50');
Cliente.create(nome: "Paulo", idade: '30');
Cliente.create(nome: "Alana", idade: "14");


Qualificacao.create(nota: '4.0', valor_gasto: '3.0', cliente_id: "2", restaurante_id: "2");
Qualificacao.create(nota: '5.0', valor_gasto: '63.0', cliente_id: "3", restaurante_id: "6");

Comentario.create(conteudo: "teste oioioi;", comentavel_id: '1', comentavel_type: "Restaurante");