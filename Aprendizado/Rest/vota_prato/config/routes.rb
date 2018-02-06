Rails.application.routes.draw do
  resources :comentarios
  resources :qualificacoes
  resources :clientes
  #  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #  match 'categorias/:nome', controller: 'categorias', action: 'show', via: 'get'
  #  match 'inicio' => 'restaurantes#index', via: 'put'
  #  match 'inicio' => 'restaurantes#index', via: 'posst'
  #  match 'inicio' => 'restaurantes#delet', via: 'delet'
    
    
    resources :restaurantes
    #Ao mapear o recurso :restaurantes, o rails automaticamente cria as seguintes rotas:
    #• GET /restaurantes
    #:controller => 'restaurantes', :action => 'index'
    #• POST /restaurantes
    #:controller => 'restaurantes', :action => 'create'
    #• GET /restaurantes/new
    #:controller => 'restaurantes', :action => 'new'
    #• GET /restaurantes/:id
    #:controller => 'restaurantes', :action => 'show'
    #• PUT /restaurantes/:id
    #:controller => 'restaurantes', :action => 'update'
    #• DELETE /restaurantes/:id
    #:controller => 'restaurantes', :action => 'destroy'
    #• GET /restaurantes/:id/edit
    #:controller => 'restaurantes', :action => 'edit'
    
    VotaPrato::Application.routes.draw do
  resources :comentarios
  resources :qualificacoes
  resources :clientes
        match 'ola' => 'ola_mundo#index', via: 'get'
    end
end
