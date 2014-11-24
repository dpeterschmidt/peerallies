class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_current_user #do this before any other controller

  # Not sure if this should be here hack for an error when using UPS login
  def self.find_by_provider_and_uid(provider, uid)
  where(provider: provider, uid: uid).first
end

  protected # prevents methods from being invoked by a route

	  def set_current_user
	    @current_user ||= PeerAlly.find_by_id(session[:user_id])
	    #redirect_to ____path and return unless @current_user #can redirect to somewhere if not logged in
	  end

		# from http://stackoverflow.com/questions/1207424/can-i-restrict-rails-controller-methods-to-development-environment
	  def restrict_to_development
	    head(:bad_request) unless Rails.env.development?
	  end
end
