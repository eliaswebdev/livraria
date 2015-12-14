Rails.application.routes.draw do

  devise_for :users
	namespace :admin do
		resources :autores
		resources :categorias
		resources :editoras
		resources :livros
	end


	root to: 'paginas#principal'
end
