class AllyMailer < ActionMailer::Base
  default from: "peeralliesups@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ally_mailer.notification_email.subject
  #
  def notification_email
    mail to: "peeralliesups@gmail.com", subject: "We received your request to get in touch with an ally", body: "An Ally will be in touch with you as soon as possible.  In the meantime, be sure to review the crisis information on our website to be sure that you are aware of all the avenues available to you for dealing with the incident."
  end
end
