class AllyMailer < ActionMailer::Base

  # the default address to send a confirmation_email from
  default from: "peerallies.pugetsound@gmail.com"

  # this is the email notifying an ally that a victim has requested
  # help from the peer allies
  # Params:
  # +name+:: the name of the victim
  # +email+:: the email address of the victim
  # +message+:: the message the victim wishes to include
  def notification_email(name, email, message)
    # auto includes the name in an opening sentence to introduce
    # the victim to the ally
    body = "Hi, my name is #{name}. " + "\n" + "\n" + message
    mail from: email, body: body
  end

  # this is the email from the peer allies to the victim
  # providing confirmation that they received a request
  # Params:
  # +name+:: The name of the victim
  # +email+:: The email address of the victim
  def confirmation_email(name, email)
    body = "Hello, #{name}."  + "\n" + "The Peer Allies " +
      "have received your request, and will get in " +
      "touch with you as soon as possible."
    
    mail to: email, from: "peerallies.pugetsound@gmail.com", body: body
  end

end