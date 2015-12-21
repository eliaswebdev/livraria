class LivrosController < ApplicationController
  before_action :set_livro, only: [:show]


  def index
  end

  def show
  end

  def busca
  end

  def set_livro
  	@livro = Livro.find_by(slug: params[:id])
  rescue
  	redirect_to root_path, alert: 'Livro não encontrado!'
  end

  def params_livro
  	params.require(:livro).permit!
  end
end
