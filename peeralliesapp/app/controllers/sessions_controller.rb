class SessionsController < ApplicationController
  before_filter :restrict_to_development, :only => [:test_login]

  skip_before_filter :set_current_user #don't check for the user when authenticating

  #login
  def create
    auth = request.env["omniauth.auth"]
    if(PeerAlly.find_by_ups_id(auth["info"]["name"]).nil?) #If the name(i.e. jross) is not in the database then they can't login
      flash[:notice] =  'You must be a Peer Ally or an administrator to login.'
      redirect_to index_path
    else
    user = PeerAlly.find_by_ups_id(auth["info"]["name"]) #The name is a PeerAlly and should be able to be logged in
    session[:user_id] = user.id #set the user_id to track user throughout website
    redirect_to peer_ally_path(user) #where go to when logged in
    end
  end

  #logout
  def destroy
    session.delete(:user_id) #remove from session so they are no longer the current_user
    flash[:notice] = 'You have been logged out successfully.'
    redirect_to index_path #where to go to when logged out
  end

end