# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Errbit::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.sendgrid.net",
  :port => 25,
  :authentication => :plain,
  :domain => ENV['SENDGRID_DOMAIN']
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD']
}
