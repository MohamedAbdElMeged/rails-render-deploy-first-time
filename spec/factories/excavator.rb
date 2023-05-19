FactoryBot.define do
    factory :excavator do
      ticket
      company_name { Faker::Company.name }
      address { Faker::Address.full_address}
      crew_on_site { [true,false].sample}


    end
  end

