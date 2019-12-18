class NodesController < ApplicationController
	def  show
  	@node=Node.find(params[:id])
  end

  def create
    @node = Node.new(node_params)
     
      if @node.save
        redirect_to @node
      else
        render 'new'
      end
  end

  

  def new
  	@node=Node.new
  end

 

  
 
  private
    def node_params
      params.require(:node).permit(:node_name,  :place_id)
    end
end
