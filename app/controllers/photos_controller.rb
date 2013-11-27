class PhotosController < ApplicationController

	def index
		@photos = Photo.all

	end

	def new
		@photo = Photo.new
	end


	def create
		@photo = Photo.new (params[:photo].permit(:caption))
			if @photo.save
				flash[:notice] = "Cool pic!"
		redirect_to photos_path
	else
		render 'new'
	end
 end
end
