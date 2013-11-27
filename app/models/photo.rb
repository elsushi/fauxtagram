class Photo < ActiveRecord::Base

	validates :caption, presence: true #{ message: 'has to be filled out'}
	validates :caption, length: {maximum: 60}
end
