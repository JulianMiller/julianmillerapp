# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
DealMeHealth::Application.initialize!

# Ensure the gateway is in test mode
# ActiveMerchant::Billing::Base.gateway_mode = :test
 #ActiveMerchant::Billing::Base.integration_mode = :test
 #ActiveMerchant::Billing::PaypalGateway.pem_file =
  #               File.read(File.dirname(__FILE__) + '/../paypal/paypal_cert.pem')
