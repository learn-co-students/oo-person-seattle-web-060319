require 'pry'

class Person
  attr_reader :name

  def bank_account=(amount)
    @bank_account = amount
  end

  def bank_account
    @bank_account
  end

  def happiness=(amount)
      if amount > 10
        @happiness = 10
      elsif amount < 0
        @happiness = 0
      else
        @happiness = amount
      end
  end

  def happiness
    @happiness
  end

  def hygiene=(amount)
    if amount > 10
      @hygiene = 10
    elsif amount < 0
      @hygiene = 0
    else
      @hygiene = amount
    end
  end

  def hygiene
    @hygiene
  end


    def initialize(name, bank_account = 25, hygiene = 8, happiness = 8)
      @name = name
      @bank_account = bank_account
      @hygiene = hygiene
      @happiness = happiness
    end

def get_paid(salary)
  bank_account= (@bank_account += salary)
    puts "all about the benjamins"
end

def take_bath
  #hygiene has to be incremented by 4
    self.hygiene=(@hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  #hygiene has to be incremented by 4
    self.hygiene=(@hygiene - 3)
    self.happiness=(@happiness + 2)
    return "♪ another one bites the dust ♫"
      # binding.pry
end

def call_friend(friend)
  self.happiness=(@happiness + 3)
  friend.happiness=(friend.happiness + 3)
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
  if topic == "politics"
    self.happiness=(@happiness - 2)
    friend.happiness=(friend.happiness - 2)
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness=(@happiness + 1)
    friend.happiness=(friend.happiness + 1)
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end
end

def clean?
  hygiene.between?(0,10)
    if hygiene > 7
      true
    else
      false
    end
end

def happy?
   happiness.between?(0,10)
      if happiness > 7
        true
      else
        false
      end
end


  def get_paid(salary)
    bank_account =(@bank_account += salary)
    return "all about the benjamins"
  end
end

Michael = Person.new("Michael")
Michael.take_bath
Michael.hygiene
