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
  end

  def hygiene
    @hygiene
  end

end


