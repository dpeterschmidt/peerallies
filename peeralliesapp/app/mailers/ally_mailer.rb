class AllyMailer < ActionMailer::Base

  default to: "peerallies.pugetsound@gmail.com"

  def notification_email(name, email, message)
    body = "Hi, my name is #{name}. " + "\n" + "\n" + message
    mail from: email, body: body
  end

end
