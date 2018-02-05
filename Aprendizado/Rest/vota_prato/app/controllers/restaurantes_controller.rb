class RestaurantesController < ApplicationController
    
    # Inicio
    def index
        @restaurantes = Restaurante.order :nome
        respond_to do |format|
            format.html
            format.xml {render xml: @restaurantes}
            format.json {render json: @restaurantes}
        end
    end
    
    # Mostra dados de um elemento
    def show
        @restaurante = Restaurante.find params[:id]
        respond_to do |format|
            format.html
            format.json {render json: @restaurante}
            format.xml {render xml: @restaurante}
        end
    end
    
    # Destroi o elemento
    def destroy
        @restaurante = Restaurante.find(params[:id])
        @restaurante.destroy
        redirect_to(action: "index")
    end
    
    # Cria um novo restaurante
    def new
        @restaurante = Restaurante.new
    end
    
    # Parametros que vem da view
    def restaurante_params
        params.require(:restaurante).permit(:nome, :endereco, :especialidade)
    end
    
    # Pesiste os dados no banco de dados
    def create
        @restaurante = Restaurante.new(restaurante_params)
        if @restaurante.save
            redirect_to action: "show", id: @restaurante
        else
            render action: "new"
        end
    end
    
    # Edita dados
    def edit
        @restaurante = Restaurante.find params[:id]
    end
    
    # Grava dados editados no banco de dados
    def update
        @restaurante = Restaurante.find params[:id]
        if @restaurante.update_attributes(restaurante_params)
            redirect_to action: "show", id: @restaurante
        else
            render action: "edit"
        end
    end
end
