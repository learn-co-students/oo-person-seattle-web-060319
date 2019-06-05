# your code goes here
require 'pry'

class Person

    attr_reader :name
    attr_accessor :happiness, :hygiene, :bank_account

    def hygiene=(num)
        @hygiene = num
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happiness=(num)
        @happiness = num
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end



    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def clean?
        hygiene > 7 ? true : false
    end

    def happy?
        happiness > 7 ? true : false
    end

    def get_paid(salary)
        if salary > 0
            @bank_account += salary
            return "all about the benjamins"
        else
            return nil
        end
    end

    def take_bath
        @hygiene += 4
        self.hygiene = (@hygiene)
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    
    def work_out
        @happiness += 2
        @hygiene -=3
        self.hygiene = (@hygiene)
        self.happiness = (@happiness)
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        @happiness +=3 
        self.happiness = (@happiness)
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topics)
        if topics == "politics"
            @happiness -=2
            self.happiness = (@happiness)
            friend.happiness -=2
            return 'blah blah partisan blah lobbyist'
        elsif topics == "weather"
            @happiness += 1
            self.happiness = (@happiness)
            friend.happiness += 1
            return "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end

    end


end