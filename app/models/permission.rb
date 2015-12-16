class Permission < ActiveRecord::Base
	# RELATIONSHIPS
	belongs_to :user
	belongs_to :role
end
