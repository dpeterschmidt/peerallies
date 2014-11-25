class AllyMailer < ActionMailer::Base

  default to: "peerallies.pugetsound@gmail.com"

  def notification_email(name, email, message)
    body = "Hi, my name is #{name}. " + "\n" + "\n" + message
    mail from: email, body: body
  end

  def confirmation_email(name, email)
    body = "Hello, #{name}." + "\n" + "The Peer Allies have received your request, and will get in touch with you shortly."
    mail to: email, from: "peerallies.pugetsound@gmail.com", body: body
  end

end