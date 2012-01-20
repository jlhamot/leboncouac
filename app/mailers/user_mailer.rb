class UserMailer < ActionMailer::Base
  default from: "leboncouac@free.fr"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.subscribeDemand.subject
  #
  def subscribeDemand(musician)
    @musician = musician

    mail to: @musician.email, subject: "Confirmation de votre inscription sur leboncouac.fr"
  end
  
  def sendMessage(musician, name, email, phone, message)
    @musician = musician
    @sender_name = name
    @sender_email = email
    @sender_phone = phone
    @sender_message = message
    
    mail to: @musician.email, subject: "Quelqu'un souhaite vous contacter"
  end
end