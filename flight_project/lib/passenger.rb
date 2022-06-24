class Passenger 

    attr_reader :name

    def initialize(name)
        @name = name
        @flight_numbers = []
    end 

    def name
        @name
    end 

    def has_flight?(flightnumber)
        @flight_numbers.include?(flightnumber.upcase)
    end 

    def add_flight(flightnumber)
        if self.has_flight?(flightnumber) == false
                @flight_numbers << flightnumber.upcase
        end 
    end 

    
end 