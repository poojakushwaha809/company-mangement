class AddStateImage < ActiveRecord::Migration[5.2]
  def change
  	  		add_column :states, :state_image, :string

  end
end
