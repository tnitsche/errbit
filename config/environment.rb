# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Errbit::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.sendgrid.net",
  :port => 25,
  :domain => "swap.to",
  :authentication => :plain,
  :user_name => "tnitsche",
  :password => "sg_svra031"
}
