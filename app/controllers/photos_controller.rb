class PhotosController < ApplicationController

	before_action :authenticate_user!, except: :index

	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end


	def create
		
		@photo = current_user.photos.build(params[:photo].permit(:caption, :image, :tag_names))
			if @photo.save
				flash[:notice] = "Cool pic!"
		redirect_to photos_path
	else
		render 'new'
	end
 end
end
