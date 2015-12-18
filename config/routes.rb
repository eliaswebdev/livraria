Rails.application.routes.draw do

	devise_for :users
	
	resources :livros
	resources :categorias
	resources :editoras

	namespace :admin do
		
		root to: 'livros#index'
		resources :autores
		resources :categorias
		resources :editoras

		resources :livros do
			member do
				get :comentarios, path: :avaliacoes
			end

			collection do
			end
		end
	end


	root to: 'paginas#principal'
end
