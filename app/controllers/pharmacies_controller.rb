class PharmaciesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index

    address = params[:address]
    @pharmacies = Pharmacy.where.not(latitude: nil, longitude: nil).near(address, 10)
    @hash = Gmaps4rails.build_markers(@pharmacies) do |pharmacie, marker|
      marker.lat pharmacie.latitude
      marker.lng pharmacie.longitude
      marker.infowindow "<p>#{pharmacie.name}
       </p>
      <a href='#{pharmacie.url}'>Voir le site</p>"
      marker.json(id: pharmacie.id)
      marker.picture(
        url: ActionController::Base.helpers.asset_path("map_locator4.png"),
        width: 33,
        height: 49,
      )
    end
  end

end
