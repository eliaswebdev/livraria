class Livro < ActiveRecord::Base
	## RELACIONAMENTOS
	has_and_belongs_to_many :autores
	belongs_to :categoria
	belongs_to :editora
	has_many :comentarios
	has_many :anexos
	accepts_nested_attributes_for :anexos, allow_destroy: true

	## VALIDAÇÕES
	validates :categoria_id, :editora_id, :titulo, :isbn, :descricao, :ano, presence: true
	validates :titulo, :slug, uniqueness: true

	## UPLOADS
	mount_uploader :capa, CapaUploader


	# def to_param
	# 	"#{id} #{titulo}".parameterize
	# end

	# Callbacks
	before_create :create_slug
	before_update :update_slug

  	def create_slug
		self.slug = self.titulo.parameterize
	end

	def update_slug
		self.slug = self.titulo.parameterize if self.slug.blank?
		self.slug = self.titulo.parameterize if self.titulo_changed?
	end

end
