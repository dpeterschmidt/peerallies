# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Peeralliesapp::Application.initialize!

Paperclip.options[:image_magick_path] = "/opt/ImageMagick/bin"
Paperclip.options[:command_path] = "/opt/ImageMagick/bin"
