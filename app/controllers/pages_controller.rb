class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :new_contact]

  def home
    @products = Product.all
    @quotes = Quote.limit(2).order('id desc')
  end

  def contact

  end

  def new_contact
    @contact = set_contact
    if @contact.save && verify_recaptcha(model: @contact)
      flash[:notice] = "Votre message a bien été enregistré.
                        Nous allons prendre contact avec vous rapidement."
      ContactMailer.new_message(@contact).deliver_now
      redirect_to root_path
    else
      flash[:notice] = "Tous les champs doivent être complétés"
      render :contact
    end
  end

  private

  def set_contact
    contact = Contact.new
    params.permit(:pharmacy, :email, :phone, :message)
    contact.pharmacy = params[:pharmacy]
    contact.email = params[:email]
    contact.phone = params[:phone]
    contact.message = params[:message]
    contact
  end
end
