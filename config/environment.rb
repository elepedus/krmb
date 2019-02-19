# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
Krmb::Application.default_url_options = Krmb::Application.config.action_mailer.default_url_options
