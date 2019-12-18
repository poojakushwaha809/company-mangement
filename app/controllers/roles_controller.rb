class RolesController < ApplicationController
	def  show
  	@role=Role.find(params[:id])
  end

  def create
    @role = Role.new(role_params)
     
      if @role.save
        redirect_to @role
      else
        render 'new'
      end
  end

  

  def new
  	@role=Role.new
  end

 

  
 
  private
    def role_params
      params.require(:role).permit(:role_name,)
    end
end
