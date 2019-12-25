ActiveAdmin.register Company do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :company_image, :country_id, :country_name, :state_id, :state, :city_id, :city_name, :postcode, :start_date, :active

form do |f|
    f.inputs do
      f.input :country_id, as: :select, collection: Country.all.map{|c| [c.country_name, c.id]}
      f.input :state_id, as: :select, collection: State.all.map{|c| [c.state, c.id]}
      f.input :city_id, as: :select, collection: City.all.map{|c| [c.city_name, c.id]}
      f.input :postcode   
      f.input :name
      f.input :start_date
      f.input :active
      f.input :company_image, :as => :file
    end
    f.actions 
    end

    show do
    attributes_table do
       row :name
       row :company_image 
       row :postcode 
       row  :start_date 
       row  :active do |ad|
        image_tag ad.company_image.url, size:10*10
      end
    end
    active_admin_comments
  end


    index do

		column "Company_image" do |product|
		  image_tag product.company_image.url, size:10*10, class: 'my_image_size' if product.company_image.present?
		end
		    column :name
		    column :state 
		    column :country
		    column :city
		    column "country name" do |company|
		      company.country.country_name if company.country.present?
		    end

		    column "City name" do |company|
		      company.city.city_name if company.city.present?
		    end

		    column "State name" do |company|
		      company.state.state if company.state.present?
		    end

	end	
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
