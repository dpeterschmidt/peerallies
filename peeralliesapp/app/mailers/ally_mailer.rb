class AllyMailer < ActionMailer::Base
  default from: "peeralliesups@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ally_mailer.notification_email.subject
  #
 # def welcome_email(name, email, information)  # Beth's Attempt to get the email to work.
 #    @name = name
 #    @email = email
 #    @information = information
 #    @greeting = "Peer Ally Alert!"
 #    mail(to: peerallies.pugetsound@gmail.com, subject: 'Welcome to My Awesome Site')
 #  end

  def notification_email()
  	# @name = name
  	# @email = email
  	# @reason = reason

    mail from: "peeralliesups@gmail.com", to: "peerallies.pugetsound@gmail.com", subject: "Ally Request", body: "An Ally will be in touch with you as soon as possible.  In the meantime, be sure to review the crisis information on our website to be sure that you are aware of all the avenues available to you for dealing with the incident."
  end

end
