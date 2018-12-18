class VoyagesController < ApplicationController
before_action :set_voyage, only: [:show, :edit, :update, :destroy]

  def index
    @voyages = Voyage.all
  end

  def show
  end

  def new
    @voyage = Voyage.new
  end

  def create
    Voyage.create(voyage_params)
      redirect_to voyages_path
  end

  def edit
  end

  def update
    @voyage.update(voyage_params)
    redirect_to voyages_path
  end


  def destroy
    @voyage.destroy
    redirect_to voyages_path
  end


private
 def voyage_params
   params.require(:voyage).permit(:name, :adresse, :date, :prix, :description)
 end

 def set_voyage
  @voyage = Voyage.find(params[:id])
 end



end
