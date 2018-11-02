FactoryBot.define do
  factory :party do
    title { Faker::Book.title }
    date { "2018-11-01 10:54:47" }
    description { "Viewing the Sample Celestial Event" }
    street_address { "1000 Sample Road" }
    city { "Sampleville" }
    state { "CO"}
    zip_code { 80203 }
    latitude { 39.742043 }
    longitude { -104.991531 }
    association :host, factory: :user
  end
end
