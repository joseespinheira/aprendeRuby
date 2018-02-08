class Restaurante < ApplicationRecord
    has_many :qualificacoes
    has_and_belongs_to_many :pratos
    has_many :comentarios, as: :comentavel
    validates_presence_of :nome, message: "deve ser preenchido"
    validates_presence_of :endereco, message: "deve ser preenchido"
    validates_presence_of :especialidade, message: "deve ser preenchido"
    validates_uniqueness_of :nome, message: "nome já cadastrado"
    validates_uniqueness_of :endereco, message: "endereço já cadastrado"
    validate :primeira_letra_deve_ser_maiuscula
    ##validates_attachment :foto, content_type: { content_type: ["foto/jpg", "foto/jpeg", "foto/png", "foto/gif"] }
    ##validates_attachment_content_type :foto, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    has_attached_file :foto, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_file_name :foto, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]

    
    private
    def primeira_letra_deve_ser_maiuscula
        errors.add(:nome,
        "primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
    end
    
    #validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    #validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    

end
