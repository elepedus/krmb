class CreateVehicles < ActiveRecord::Migration[6.0]
  def up
    execute <<~SQL
      CREATE TYPE fuel_type AS ENUM (
        'petrol',
        'diesel',
        'bi_fuel',
        'electric',
        'hybrid_diesel_electric',
        'hybrid_diesel_electric_plug_in',
        'hybrid_petrol_electric',
        'hybrid_petrol_electric_plug_in',
        'ethanol');
      CREATE TYPE gearbox AS ENUM (
        'manual',
        'automatic',
        'semi_automatic'
      );
      CREATE TYPE body_type AS ENUM(
        'MPV',
        'Convertible',
        'SUV',
        'Estate',
        'Hatchback',
        'Coupe',
        'Pickup',
        'Saloon',
        'Van',
        'Truck',
        'Bike',
        'Motorhome'
      );
    SQL
    create_table :vehicles do |t|
      t.string :name
      t.string :registration
      t.string :make
      t.string :model
      t.string :trim
      t.integer :year
      t.column :fuel_type, :fuel_type
      t.float :engine_size
      t.column :gearbox, :gearbox
      t.column :body_type, :body_type
      t.integer :seats
      t.integer :doors
      t.string :colour
      t.integer :fuel_consumption
      t.text :notes
      t.integer :mileage
      t.date :mot_expires
      t.date :insurance_expires
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end

    add_index :vehicles, :fuel_type
    add_index :vehicles, :gearbox
    add_index :vehicles, :body_type
  end

  def down
    remove_index :vehicles, :fuel_type
    remove_index :vehicles, :gearbox
    remove_index :vehicles, :body_type
    drop_table :vehicles
    execute <<-SQL
          DROP TYPE fuel_type;
          DROP TYPE gearbox;
          DROP TYPE body_type;
    SQL
  end
end
