Rails.application.routes.draw do

	devise_for :users
	
	resources :livros

	namespace :admin do
		root to: 'livros#index'
		resources :autores
		resources :categorias
		resources :editoras
		resources :livros
	end


	root to: 'paginas#principal'
end
