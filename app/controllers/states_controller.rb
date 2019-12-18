class StatesController < ApplicationController
	def create
    @state = State.new(state_params)
   	 
      if @state.save
        redirect_to @state
      else
        render 'new'
      end
  end

  def  show
  	@state=State.find(params[:id])
  end

  def new
  	@state=State.new
  end
 
  private
    def state_params
      params.require(:state).permit(:state, :country_id)
    end
end
