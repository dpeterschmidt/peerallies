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
  
  # first we include the actual domain name of the app hosted on heroku
  config.action_mailer.default_url_options = { :host => 'https://tranquil-cliffs-4819.herokuapp.com' }
  config.action_mailer.delivery_method = :smtp # we are using an smtp server to send emails
  config.action_mailer.perform_deliveries = true # we wish for emails to be delivered
  config.action_mailer.raise_delivery_errors = false # errors should have been handled in development
  config.action_mailer.smtp_settings = { # account settings for Mandrillapp
    :address => "smtp.mandrillapp.com",
    :port => 587,
    :user_name => "peeralliesups@gmail.com",
    :password => "9_gEK4mX1D0rg_6iBcZWLA"
  }

  # Settings specified here will take precedence over those in config/application.rb

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = false

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = false

  # Generate digests for assets URLs
  config.assets.digest = true

  # Defaults to nil and saved in location specified by config.assets.prefix
  # config.assets.manifest = YOUR_PATH

  # Specifies the header that your server uses for sending files
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Prepend all log lines with the following tags
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  # config.assets.precompile += %w( search.js )

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  # config.active_record.auto_explain_threshold_in_seconds = 0.5
end
