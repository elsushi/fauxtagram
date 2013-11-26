class PhotosController < ApplicationController

	def index
		@photos = Photo.all

	end

	def new
	end


	def create
		Photo.create (params[:photo].permit(:caption))
		redirect_to photos_path
	end
end
