require 'pry'

class Building

    attr_accessor :name, :number_of_tenants
    attr_reader :address

    @@all_buildings = []

    def initialize name, address, number_of_floors, number_of_tenants
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants
        @@all_buildings << self
    end

    def self.all_buildings
        @@all_buildings
    end

    def self.average_of_tenants_in_buildings
        tenants_in_buildings = @@all_buildings.map {|building| building.number_of_tenants.to_f}
        average_of_tenants = (tenants_in_buildings.sum / tenants_in_buildings.size).round
    end

    def placard
        "#{@name} - #{@address}"
    end

    def average_number_of_tenants_per_floor
        (@number_of_tenants.to_f / @number_of_floors.to_f).round
    end
end

flatiron_building = Building.new "Flatiron Building", "175 5th Ave, New York, NY", 21, (1.85 * 10**2)
empire_state_building = Building.new "Empire State Building", "20 W 34th St, New York, NY", 102, (1.5 * 10**3)
wayne_tower = Building.new "Wayne Tower", "1939 Kane Street Gotham City, New Jersey", 72, (3.62 * 10**3)

#binding.pry