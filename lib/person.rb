# your code goes here
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene 

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @bank_account = bank_account
    @name = name
    @happiness = happiness
    @hygiene = hygiene
  end

  def hygiene=(points)
    if points > 10
      @hygiene = 10
    elsif points < 0
      @hygiene = 0
    else
      @hygiene = points
    end
  end

  def happiness=(points)
    if points > 10
      @happiness= 10
    elsif points < 0
      @happiness = 0
    else
      @happiness = points
    end
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
end