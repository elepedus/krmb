FactoryBot.define do
  factory :vehicle do
    name {Faker::Vehicle.name}
    registration {Faker::Vehicle.license_plate}
    make {Faker::Vehicle.make}
    model {Faker::Vehicle.model}
    trim {Faker::Vehicle.car_type}
    year {Faker::Vehicle.year}
    notes {Faker::Lorem.paragraphs}
    documents {Faker::File.file_name}
    mileage {Faker::Vehicle.mileage}
    mot_expires {Faker::Date.forward}
    insurance_expires {Faker::Date.forward}
    user {User.create_or_find_by(email: Faker::Internet.email)}
    images {Faker::LoremFlickr.image(search_terms: 'car')}
    fuel_type {Faker::Vehicle.fuel_type}
    gearbox {Faker::Vehicle.drive_type}
    body_type {Faker::Vehicle.car_type}
    doors {Faker::Vehicle.doors}
    colour {Faker::Color.color_name}
    fuel_consumption {Faker::Number.between 3, 200}
    engine_size {Faker::Vehicle.engine_size}
  end
end
