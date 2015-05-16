class Soup < ActiveRecord::Base
	belongs_to :category

	validates :name,
			  	presence: true,
			  	uniqueness: true
	validates  :featured,
			  	presence: true
end
