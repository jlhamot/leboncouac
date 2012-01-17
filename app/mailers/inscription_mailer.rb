class InscriptionMailer < ActionMailer::Base
  default from: "no_reply@leboncouac.fr"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inscription_mailer.subscribeDemand.subject
  #
  def subscribeDemand(musician)
    @musician = musician

    mail to: @musician.email, subject: "Confirmation de votre inscription sur leboncouac.fr"
  end
end
