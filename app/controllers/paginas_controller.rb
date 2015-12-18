class PaginasController < ApplicationController

	def principal
		@livros = Livro.all
	end

end