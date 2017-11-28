class PharmaciesController < ApplicationController

  def index
    define_pharmacies
    @hash = Gmaps4rails.build_markers(@pharmacies) do |pharmacie, marker|
      marker.lat pharmacie.latitude
      marker.lng pharmacie.longitude
      marker.infowindow "<p>#{pharmacie.name}
       </p>
      <a href='#{pharmacie.url}' class='infowindow-card-button'>Voir le site .</p>"
      marker.json(id: pharmacie.id)
      marker.picture(
        url: ActionController::Base.helpers.asset_path("map_locator4.png"),
        width: 33,
        height: 49,
      )
    end
  end

  private

  def define_pharmacies
    if params[:address].present?
      address = params[:address]
      @pharmacies = Pharmacy.where.not(latitude: nil, longitude: nil).near(address, 10)
    else
      @pharmacies = Pharmacy.all
    end
  end
end
