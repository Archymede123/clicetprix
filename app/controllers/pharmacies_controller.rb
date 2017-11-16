class PharmaciesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    # @pharmacies = Pharmacie.where.not(latitude: nil, longitude: nil)

    # @pharmacies = Pharmacy.all

    # @hash = Gmaps4rails.build_markers(@pharmacies) do |pharmacie, marker|
    #   marker.lat pharmacie.latitude
    #   marker.lng pharmacie.longitude
    #   # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    # end
  end

end
