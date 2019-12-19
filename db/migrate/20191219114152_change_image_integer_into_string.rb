class ChangeImageIntegerIntoString < ActiveRecord::Migration[5.2]
  def change
  	    remove_column :users, :image
     add_column :users, :image, :string
 	    

  end
end
