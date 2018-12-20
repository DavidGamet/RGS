class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  def index
    @photos = Photo.all
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def create
    Photo.create(photo_params)
      redirect_to photos_path
  end

  def edit
  end

  def update
    @photo.update(photo_params)
    redirect_to photos_path
  end


  def destroy
    @photo.destroy
    redirect_to photos_path
  end


private
 def photo_params
   params.require(:photo).permit(:name, :prix, :photo, :description)
 end

 def set_photo
  @photo = Photo.find(params[:id])
 end
end
