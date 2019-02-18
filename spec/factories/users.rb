FactoryBot.define do
  factory :user do
    email {Faker::Internet.email}
    password {Faker::Internet.password}

    factory :user_with_vehicles do
      after(:create) do |user|
        create_list(:vehicle, 5, user: user)
      end
    end
  end
end
