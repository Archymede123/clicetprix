class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact]

  def home
    @product = Product.first
  end

  def contact

  end
end
