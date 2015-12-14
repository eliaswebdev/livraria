class Autor < ActiveRecord::Base
	## RELACIONAMENTOS
	has_and_belongs_to_many :livros	
end
