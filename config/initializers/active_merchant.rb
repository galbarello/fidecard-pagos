ActiveMerchant::Billing::Base.mode = :test
   ::GATEWAY = ActiveMerchant::Billing::PaypalGateway.new(
    :login => "galbar_1300654000_biz_api1.gmail.com",
      :password => "1300654015",
        :signature => "AZ1u9jEqDqRtAkF6403SD7H4g3cxA0bGy-Hl3wQFdNKbv6CzQL8GntEW"
)

