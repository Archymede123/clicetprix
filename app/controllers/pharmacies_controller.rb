class PharmaciesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index

    address = params[:address]
    @pharmacies = Pharmacy.where.not(latitude: nil, longitude: nil).near(address, 10)



    # @hash = Gmaps4rails.build_markers(@pharmacies) do |pharmacie, marker|
    #   marker.lat pharmacie.latitude
    #   marker.lng pharmacie.longitude
    #   # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    # end
  end

end
