class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :categorias, :editorias

  private
	  def categorias
	  	@categorias = Categoria.all
	  end

	  def editorias
  		@editoras = Editora.all
	  end
  	
end
