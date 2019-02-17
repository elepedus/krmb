class Vehicle < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many_attached :documents
  enum fuel_types: {
    petrol: 'petrol',
    diesel: 'diesel',
    bi_fuel: 'bi_fuel',
    electric: 'electric',
    hybrid_diesel_electric: 'hybrid_diesel_electric',
    hybrid_diesel_electric_plug_in: 'hybrid_diesel_electric_plug_in',
    hybrid_petrol_electric: 'hybrid_petrol_electric',
    hybrid_petrol_electric_plug_in: 'hybrid_petrol_electric_plug_in',
    ethanol: 'ethanol'
  }, _suffix: true
  enum gearboxes: {
    manual: 'manual',
    automatic: 'automatic',
    semi_automatic: 'semi_automatic'
  }, _suffix: true
  enum body_types: {
    MPV: 'MPV',
    Convertible: 'Convertible',
    SUV: 'SUV',
    Estate: 'Estate',
    Hatchback: 'Hatchback',
    Coupe: 'Coupe',
    Pickup: 'Pickup',
    Saloon: 'Saloon',
    Van: 'Van',
    Truck: 'Truck',
    Bike: 'Bike',
    Motorhome: 'Motorhome'
  }, _suffix: true


end
