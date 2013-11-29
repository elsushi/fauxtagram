class PhotosController < ApplicationController

	before_action :authenticate_user!, except: :index

	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def update
  @photo = Photo.find(params[:id])
 
  if @photo.update(params[:photo].permit(:caption, :image, :tag_names))
    redirect_to photos_path
  else
    render 'edit'
  end
end

def destroy
  @photo = Photo.find(params[:id])
  @photo.destroy
 
  redirect_to photos_path
end

	def create
		
		@photo = current_user.photos.build(params[:photo].permit(:caption, :image, :tag_names))
			if @photo.save
				flash[:notice] = "Cool pic!"
				WebsocketRails[:photos].trigger 'new', 
											{ caption: @photo.caption, image_url: @photo.image.url(:medium) }
		redirect_to photos_path
	else
		render 'new'
	end
 end
end
