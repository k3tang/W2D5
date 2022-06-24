require_relative "passenger"

class Flight 

    attr_reader :passengers

    def initialize(flightnumber, capacity)
        @flight_number = flightnumber
        @capacity = capacity
        @passengers = []
    end 

    def full?
        @capacity == @passengers.length
    end 

    def board_passenger(pgr = Passenger.new(name))
        if pgr.has_flight?(@flight_number) && (self.full? == false)
            @passengers << pgr
        end 
    end 

    def list_passengers
       newarray = @passengers.map do |passenger|
           passenger.name
        end 
        newarray
    end 

    def [](idx)
        @passengers[idx]
    end 

    def <<(pgr = Passenger.new(name))
        self.board_passenger(pgr)
    end 







end 