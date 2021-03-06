Peeralliesapp::Application.configure do

  # the below block of code allows the web app to connect
  # to an external SMTP server provided by Mandrill(app)
  # that takes a user name of a registered account, which
  # by default has 12,000 free email sends a month, in
  # addition to a key (password) generated by them to access
  # their service
  #
  # once a connection to the service is established
  # this web app can send emails using Mandrill as a
  # third party who actually delivers the mail
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.delivery_method = :smtp # we are using an smtp server
  config.action_mailer.perform_deliveries = true # and we want the emails to send for testing
  config.action_mailer.raise_delivery_errors = false # and if there is an issue an error should raise
  config.action_mailer.smtp_settings = {
    # mandrillapp account settings for sending emails
    :address => "smtp.mandrillapp.com",
    :port => 587,
    :user_name => "peeralliesups@gmail.com",
    :password => "9_gEK4mX1D0rg_6iBcZWLA"
  }


  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  # config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
end

