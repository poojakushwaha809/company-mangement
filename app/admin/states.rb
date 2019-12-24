ActiveAdmin.register State do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :state_image, :state, :country_name, :country_id
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
    f.input :country_id, as: :select, collection: Country.all.map{|c| [c.country_name, c.id]}
      f.input :state
      f.input :state_image, :as => :file
    default_actions
 end
      
    end
    

end













  