class Comentario < ActiveRecord::Base
	## RELACIONAMENTOS
	belongs_to :livro
end
