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
      params.require(:company).permit( :name, :company_image, :country_id, :country_name, :state_id, :state, :city_id, :city_name, :postcode, :start_date, :active)
    end
end
