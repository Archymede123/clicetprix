ActiveAdmin.register Pharmacy do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
permit_params :name, :opening_times, :url, :image, :address

form do |f|

  f.inputs "Pharmacie" do
    f.input :name
    f.input :opening_times
    f.input :url
    f.input :image
  end


  f.inputs "Adresse", for: [:address, f.object.address || Address.new ] do |s|
    s.input :street
    s.input :zip_code
    s.input :city
  end

  f.actions

 end

controller do
  def permitted_params
    params.permit!
  end
end





# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
