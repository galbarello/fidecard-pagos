ActiveMerchant::Billing::Base.mode = :test
   ::GATEWAY = ActiveMerchant::Billing::PaypalGateway.new(
    :login => ENV['paypal_login'] ||"galbar_1300654000_biz_api1.gmail.com",
      :password => ENV['paypal_pass']||"1300654015",
        :signature => ENV['paypal_signature']||"AZ1u9jEqDqRtAkF6403SD7H4g3cxA0bGy-Hl3wQFdNKbv6CzQL8GntEW"
)

 #ActiveMerchant::Billing::Base.mode = :test
  #::GATEWAY = ActiveMerchant::Billing::BogusGateway.new


