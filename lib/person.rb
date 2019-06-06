# your code goes here
class Person

  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def happiness=(0..10)
    @happiness = (0..10)
  end

  def hygiene=(0..10)
    @hygiene = (0..10)
  end

  def clean?(hygiene)
    if hygiene > 7
      true
    else
      false
    end
  end

  def happy?(happiness)
    if happiness > 7
      true
    else
      false
    end
  end

  def get_paid(bank_account, salary)
    bank_account += salary
    return "all about the benjamins"
  end

  def take_bath(hygiene)
    hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out(hygiene, happiness)
    hygiene -= 3
    happiness += 2
    return "♪ another one bites the dust ♫"

  end

  def call_friend(friend, happiness)
    happiness += 3

    if friend == "Felix"
      return "Hi Felix! It's Stella. How are you?"
    end
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      #both get sadder
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      #both get lil happier
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
