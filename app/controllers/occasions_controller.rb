class OccasionsController < ApplicationController
  before_action :set_occasion, only: [:show, :edit, :update, :destroy]

  def index
    @occasions = Ocassion.all
  end

  def show
  end

  def new
    @occasion = Ocassion.new
  end

  def create
    Ocassion.create(occasion_params)
      redirect_to occasions_path
  end

  def edit
  end

  def update
    @occasion.update(occasion_params)
    redirect_to occasions_path
  end


  def destroy
    @occasion.destroy
    redirect_to occasions_path
  end


private
 def occasion_params
   params.require(:occasion).permit(:name, :prix, :photo, :description)
 end

 def set_photo
  @photo = Ocassion.find(params[:id])
 end
end
