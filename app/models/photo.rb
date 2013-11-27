class Photo < ActiveRecord::Base

	has_attached_file :image,
										styles: { medium: "400x400>", thumb: "200x200>" }

	validates :caption, presence: true #{ message: 'has to be filled out'}
	validates :caption, length: {maximum: 60}
end
