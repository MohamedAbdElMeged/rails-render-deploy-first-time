FactoryBot.define do
    factory :ticket do
      request_number { "#{Faker::Invoice.reference[0..10]}-#{Faker::Invoice.reference[11..15]}"}
      request_action { ["Restake", "Hello"].sample }
      request_type { ["Normal", "Danger"].sample }
      sequence_number {"#{Faker::Invoice.reference[0..4]}"}
      response_due_date_time { Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all)}
      primary_service_area_code {   Faker::Alphanumeric.alpha(number: 6)}
      additional_service_area_codes {   [Faker::Alphanumeric.alpha(number: 6) , Faker::Alphanumeric.alpha(number: 6), Faker::Alphanumeric.alpha(number: 6)]}

    end
  end

