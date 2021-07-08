# your code goes here
require 'pry'

class Person

  attr_reader :name

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_acct = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def bank_account=(amt)
    @bank_acct = amt
  end

  def bank_account
    @bank_acct
  end

  def happiness=(inx)
    if inx > 10
      @happiness = 10
    elsif inx < 0
      @happiness = 0
    else
      @happiness = inx
    end
  end

  def happiness
    @happiness
  end

  def hygiene=(inx)
    if inx > 10
      @hygiene = 10
    elsif inx < 0
      @hygiene = 0
    else
      @hygiene = inx
    end
    return @hygiene
  end

  def hygiene
    @hygiene
  end


  def happy?
  	if @happiness > 7
  		true
  	else
  		false
  	end
  end

   def clean?
  	if @hygiene > 7
  		true
  	else
  		false
  	end
  end

  def get_paid(salary)
  	@bank_acct += salary
  	return "all about the benjamins"
  end

  def take_bath
  	self.hygiene=(@hygiene+4)
  	return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
  	self.hygiene=(@hygiene-3)
  	self.happiness=(@happiness+2)
  	return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
  	self.happiness=(@happiness+3)
  	friend.happiness=(friend.happiness+3)
  	return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
  	case topic
  	when "politics"
  		self.happiness=(@happiness-2)
  		friend.happiness=(friend.happiness-2)
  		return "blah blah partisan blah lobbyist"
  	when "weather"
  		self.happiness=(@happiness+1)
  		friend.happiness=(friend.happiness+1)
  		return "blah blah sun blah rain"
  	else
  		return "blah blah blah blah blah"
  	end
  end


end


