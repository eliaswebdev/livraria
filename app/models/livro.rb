class Livro < ActiveRecord::Base
	## RELACIONAMENTOS
	has_and_belongs_to_many :autores
	belongs_to :categoria
	belongs_to :editora

	## VALIDAÇÕES

	validates :categoria_id, :editora_id, :titulo, :isbn, :descricao, :ano, presence: true
end
