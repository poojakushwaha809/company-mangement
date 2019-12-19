class CompaniesController < ApplicationController
	
  def  show
  	@company=Company.find(params[:id])
  end

  def create
    @company = Company.new(company_params)
     
      if @company.save
        redirect_to @company
      else
        render 'new'
      end
  end

  

  def new
  	@company=Company.new
  end


  private
    def company_params
      params.require(:company).permit(:name, :country_id, :state_id,  :city_id, :start_date,:active, :company_image)
    end
end
