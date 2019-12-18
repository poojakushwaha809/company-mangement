class RegionsController < ApplicationController
	def  show
  	@region=Region.find(params[:id])
  end

  def create
    @region = Region.new(region_params)
     
      if @region.save
        redirect_to @region
      else
        render 'new'
      end
  end

  

  def new
  	@region=Region.new
  end

 

  
 
  private
    def region_params
      params.require(:region).permit(:region_name,)
    end
end
