class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact]

  def home
    @products = Product.all
    @quotes = Quote.limit(2).order('id desc')
  end


  def contact

  end
end
