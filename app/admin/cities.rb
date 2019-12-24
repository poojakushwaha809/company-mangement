ActiveAdmin.register City do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :city_image, :city_name, :state_id, :state
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
 form do |f|
    f.inputs do
      f.input :state_id, as: :select, collection: State.all.map{|c| [c.state, c.id]}
      f.input :city_name
      f.input :city_image, :as => :file
    end
    f.actions 
    end

    show do
    attributes_table do
       row :city_name
       row :state
      row :city_image do |ad|
        image_tag ad.city_image.url, size:10*10
      end
    end
    active_admin_comments
  end

 
    index do

		column "City_image" do |product|
		  image_tag product.city_image.url, size:10*10, class: 'my_image_size' if product.city_image.present?
		end
		    column :city_name
		    column :state

	end	
end
