require_relative "item"

class List 

    attr_accessor :label

    def initialize(label)
        @label = label 
        @items = []
    end 

    def add_item(title, deadline, *description)
        item_1 = Item.new(title, deadline, description)
            if Item.valid_date?(deadline) == false 
                return false 
            else 
                @items << item_1
                return true
            end 
    end 

    def size
        @items.length
    end 

    def valid_index?(idx)
        idx < @items.length
    end 

    def swap(index_1, index_2)
        if self.valid_index?(index_1) && self.valid_index?(index_2)
            @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
            return true
        else 
            return false
        end 
    end 

    def [](idx)
        if self.valid_index?(idx)
            @items[idx]
        end 
    end 

    def priority
        @items[0]
    end 

    def print 
        puts "-" * 50
        puts "Groceries".center(50)
        puts "-" * 50
        puts "Index".ljust(3) + "|" + "Item".ljust(30) + "|" + "Deadline"
        puts "-" * 50
            @items.each.with_index do |ele, idx|
                 puts " #{idx.to_s.ljust(3)} | #{(ele.title).ljust(30)} | #{ele.deadline}"
            end 
    end 

    def print_full_item(idx)
        if self.valid_index?(idx)
              puts "-" * 50
              puts @items[idx].title + " " * 30 + @items[idx].deadline
              puts  @items[idx].description
              puts "-" * 50
        end 
    end 

    def print_priority
        self.print_full_item(0)
    end 

    def up(idx, amount = 1)
        if self.valid_index?(idx)

            amount.times do 
                unless idx == 0
                self.swap(idx, (idx - 1))
                idx -= 1
                end 
            end 

            return true
        else 
            return false
        end 
    end 

    def down(idx, amount = 1)
        if self.valid_index?(idx)
            amount.times do 
               unless idx == (@items.length - 1)
                self.swap(idx, (idx + 1))
                idx += 1
                end 
            end 
            return true 
        else 
            return false 
        end 
    end
    
 











end 
