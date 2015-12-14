class Categoria < ActiveRecord::Base
	## RELACIONAMENTOS
	has_many :livros
end
