class PaymentTransactionTestController < ApplicationController

  require 'money'
  require 'active_merchant'
  


  def process_payment
	
	ActiveMerchant::Billing::Base.mode = :test  
  
    amount_to_charge = Money.ca_dollar(1000) #ten US dollars
    @credit_card = ActiveMerchant::Billing::CreditCard.new(
    # :number => '4222222222222', #Authorize.net test card, error-producing
     :number => '4007000000027', #Authorize.net test card, non-error-producing			 
      :month => 12,                #for test cards, use any date in the future
      :year => 2010,              
      :first_name => 'Mark',      
      :last_name => 'McBride',
      :type => 'visa',             #note that MasterCard is 'master'
	  :verification_value  => '123'
    )

    if @credit_card.valid?
      @gateway = ActiveMerchant::Billing::AuthorizeNetGateway.new(
        :login => '#',         #API Login ID
        :password => '#', #Transaction Key
		:test => true
		)

      options = {
        :address => {},
        :billing_address => { 
          :name     => 'Mark McBride',
          :address1 => '1 Show Me The Money Lane',
          :city     => 'San Francisco',
          :state    => 'CA',
          :country  => 'US',
          :zip      => '23456',
          :phone    => '(555)555-5555'
        }
      }
	  
	  @response = @gateway.authorize(amount_to_charge, @credit_card, options)
      #response = gateway.autorize(amount_to_charge, creditcard, options)

      if @response.success?
        @gateway.capture(amount_to_charge, @response.authorization)
        @result = "Success: " + @response.message.to_s
      else
        @result = "Fail: " + @response.message.to_s + ": " + "Code: " +  @response.params["response_reason_code"].to_s
      end
    else
      @result = "Credit card not valid: " + @credit_card.validate.to_s + " " + @credit_card.number.to_s + " " 
    end
  end
  
  
end