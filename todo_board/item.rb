class Item 

    attr_accessor :title, :deadline, :description

    def self.valid_date?(date_string)
       array = date_string.split("-")
           month = array[1].to_i
           day = array[2].to_i 
              (1..12).include?(month) && (1..31).include?(day) && array.length == 3
    end 

    def initialize(title, deadline, description)
        @title = title 
        @deadline = deadline
            if !Item.valid_date?(deadline)
                raise ArgumentError.new "invalid date"
            end 
        @description = description
    end

    
end 



