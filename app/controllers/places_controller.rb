class PlacesController < ApplicationController
	def  show
  	@place=Place.find(params[:id])
  end

  def create
    @place = Place.new(place_params)
     
      if @place.save
        redirect_to @place
      else
        render 'new'
      end
  end

  

  def new
  	@place=Place.new
  end

 

  
 
  private
    def place_params
      params.require(:place).permit(:place_name,  :company_id)
    end
end
