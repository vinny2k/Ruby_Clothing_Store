# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

# ActionMailer::Base.smtp_settings = {
#   :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
#   :password => '<SENDGRID_API_KEY>', # This is the secret sendgrid API key which was issued during API key creation
#   :domain => 'yourdomain.com',
#   :address => 'smtp.sendgrid.net',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }