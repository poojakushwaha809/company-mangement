class AddImageInCompany < ActiveRecord::Migration[5.2]
  def change
  	add_column :companies, :company_image, :string
 	    
  end
end
