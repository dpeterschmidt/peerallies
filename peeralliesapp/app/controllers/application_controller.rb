class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_current_user #do this before any other controller

  protected # prevents methods from being invoked by a route

	  def set_current_user
	    @current_user ||= PeerAlly.find_by_id(session[:user_id])
	  end
	  

		# from http://stackoverflow.com/questions/1207424/can-i-restrict-rails-controller-methods-to-development-environment
	  def restrict_to_development
	    head(:bad_request) unless Rails.env.development?
	  end
end
