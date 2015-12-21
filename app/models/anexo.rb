class Anexo < ActiveRecord::Base
	## RELACIONAMENTO
	belongs_to :livro

	## UPLOADS
	mount_uploader :arquivo, ArquivoUploader	
end
