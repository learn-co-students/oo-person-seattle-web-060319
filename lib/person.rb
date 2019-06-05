# your code goes here
require 'pry'

class Person

	attr_reader :name
	attr_accessor :bank_acct, :happiness

	def initialize(name, bank_acct=25, happiness=8)
		@name = name
		@bank_acct = bank_acct
		@happiness = happiness
	end

	def bank_account=(amt)
		@bank_acct = amt
	end

	def happiness=(inx)
		@happiness = inx
		binding.pry
	end


end


