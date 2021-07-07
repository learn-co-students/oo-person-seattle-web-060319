require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene



  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def bank_account=(amount)
    @bank_account = amount
  end

  def bank_account
    @bank_account
  end

  def happiness=(happy_pts)
    @happiness = happy_pts.to_i.clamp(0, 10)
  end

  def happiness
    @happiness
  end

  def hygiene=(hyg_pts)
    @hygiene = hyg_pts.to_i.clamp(0, 10)
    @hygiene
  end

  def hygiene
    @hygiene
  end

  def clean?
    hygiene > 7 ? true : false
  end

  def happy?
    happiness > 7 ? true : false
  end

  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene = self.hygiene - 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      person.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      person.happiness += 1
      self.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
