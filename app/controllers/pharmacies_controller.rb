class PharmaciesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @pharmacies = Pharmacy.all
  end

end
