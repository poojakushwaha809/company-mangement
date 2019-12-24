class CitiesController < ApplicationController
	


  def  show
  	@city=City.find(params[:id])
  end

  def create
    @city = City.new(city_params)
     
      if @city.save
        redirect_to @city
      else
        render 'new'
      end
  end

  

  def new
  	@city=City.new
  end

 

  
 
  private
    def city_params
      params.require(:city).permit(:city_name, :state_id, :city_image)
    end
end
