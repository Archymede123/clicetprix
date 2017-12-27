class ContactMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.new_message.subject
  #
  def new_message(contact)
    @contact = contact

    mail(
      to:       "pharmacies@clicetprix.com",
      subject:  "Nouveau contact sur Clic et Prix",
    )
  end
end
