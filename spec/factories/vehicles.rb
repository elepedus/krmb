FactoryBot.define do
  factory :vehicle do
    name {Faker::FunnyName.name}
    registration {Faker::Vehicle.license_plate}
    make {Faker::Vehicle.make}
    model {Faker::Vehicle.model}
    trim {Faker::Vehicle.car_options}
    year {Faker::Vehicle.year}
    notes {Faker::Lorem.paragraphs}
    mileage {Faker::Vehicle.mileage}
    mot_expires {Faker::Date.forward}
    insurance_expires {Faker::Date.forward}
    user {User.create_or_find_by(email: Faker::Internet.email)}
    fuel_type {try Faker::Vehicle.fuel_type}
    gearbox {try Faker::Vehicle.drive_type}
    body_type {try Faker::Vehicle.car_type}
    doors {Faker::Vehicle.doors}
    colour {Faker::Color.color_name}
    fuel_consumption {Faker::Number.between 3, 200}
    engine_size {Faker::Vehicle.engine_size}
    # TODO: Figure out how to prevent ActiveSupport InvalidSignature errors when enabling these:
      # documents {Faker::File.file_name}
      # images {Faker::LoremFlickr.image('50x60', ['car'])}
  end
end
